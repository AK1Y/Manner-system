package com.msb.club_management.utils;

import java.io.ByteArrayOutputStream;

public class UserIDBase64Override {

    // Base64 编码字符表（用于手动编码）
    private static final char[] BASE64_CHARS = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();
    //反查表
    private static final int[] BASE64_INV = new int[256];
    //初始化  设置每个 Base64 字符对应的索引值，其他字符默认 -1
    static {
        for (int i = 0; i < BASE64_INV.length; i++)
            BASE64_INV[i] = -1;
        for (int i = 0; i < BASE64_CHARS.length; i++)
            BASE64_INV[BASE64_CHARS[i]] = i;
    }

    /**
     * 手动实现 Base64 编码
     * 每3个字节分成4组，每6位映射为一个 Base64 字符
     */
    public static String base64Encode(byte[] data) {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (i < data.length) {
            int b1 = data[i++] & 0xff;
            int b2 = (i < data.length) ? data[i++] & 0xff : 0;
            int b3 = (i < data.length) ? data[i++] & 0xff : 0;

            sb.append(BASE64_CHARS[b1 >> 2]);
            sb.append(BASE64_CHARS[((b1 & 0x3) << 4) | (b2 >> 4)]);
            sb.append((i - 1 < data.length) ? BASE64_CHARS[((b2 & 0xf) << 2) | (b3 >> 6)] : '=');
            sb.append((i < data.length) ? BASE64_CHARS[b3 & 0x3f] : '=');
        }
        return sb.toString();
    }

    /**
     * 手动实现 Base64 解码
     * 每4个字符还原为最多3个字节
     */
    public static byte[] base64Decode(String s) {
        s = s.replaceAll("=", "");
        int len = s.length();
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        int i = 0;

        while (i < len) {
            int b1 = BASE64_INV[s.charAt(i++)];
            int b2 = BASE64_INV[s.charAt(i++)];
            int b3 = (i < len) ? BASE64_INV[s.charAt(i++)] : 0;
            int b4 = (i < len) ? BASE64_INV[s.charAt(i++)] : 0;

            out.write((b1 << 2) | (b2 >> 4));
            if (i - 1 < len) out.write(((b2 & 0xf) << 4) | (b3 >> 2));
            if (i < len) out.write(((b3 & 0x3) << 6) | b4);
        }

        return out.toByteArray();
    }

    /**
     * 加密用户ID，格式：时间戳Base64|用户IDBase64 -> 反转并替换=
     */
    public static String encoderUserID(Integer userID) {
        String timeBase64 = base64Encode((System.currentTimeMillis() + "").getBytes());
        String userBase64 = base64Encode((userID + "").getBytes());
        String combined = timeBase64 + "|" + userBase64;
        String reversed = new StringBuilder(combined).reverse().toString();
        return reversed.replaceAll("=", "#");
    }

    /**
     * 解密用户ID字符串
     */
    public static Integer decoderUserID(String encodedUserID) {
        if (encodedUserID == null || encodedUserID.trim().isEmpty()) return null;
        try {
            String restored = new StringBuilder(encodedUserID.replaceAll("#", "=")).reverse().toString();
            String[] parts = restored.split("\\|");
            if (parts.length != 2) return null;
            String userIDBase64 = parts[1];
            String userIDString = new String(base64Decode(userIDBase64));
            return Integer.parseInt(userIDString);
        } catch (Exception e) {
            return null;
        }
    }

    public static void main(String[] args) {
        String encoded = encoderUserID(150);
        System.out.println("加密后: " + encoded);
        System.out.println("解密结果: " + decoderUserID(encoded));
    }
}
