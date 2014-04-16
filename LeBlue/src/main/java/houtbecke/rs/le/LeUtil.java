package houtbecke.rs.le;

import java.util.StringTokenizer;

public class LeUtil {
    public static String bytesToString(byte[] bytes) {
        StringBuilder builder = new StringBuilder();
        for (byte b: bytes) {
            builder.append(b).append(",");
        }
        String bytesString = builder.toString();
        if (bytesString.length() > 0)
            return bytesString.substring(0, bytesString.length() - 1);
        return bytesString;
    }

    public static byte[] stringToBytes(String string) {
        StringTokenizer tokenizer = new StringTokenizer(string, ",");

        byte[] bytes = new byte[tokenizer.countTokens()];
        for (int k=0; k<bytes.length; k++)
            bytes[k] = Byte.valueOf(tokenizer.nextToken());
        return bytes;
    }
}