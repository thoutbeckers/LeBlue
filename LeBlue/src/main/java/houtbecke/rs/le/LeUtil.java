package houtbecke.rs.le;

import java.util.StringTokenizer;
import java.util.UUID;

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

    public static String[] getStringsFromUUIDs(UUID[] uuids) {
        String[] params = new String[uuids.length];
        return putUUIDsInStringArray(uuids, params, 0);
    }

    public static String[] putUUIDsInStringArray(UUID[] uuids, String[] params, int start) {
        for (int k=0; k < uuids.length; k++)
            params[k+start] = uuids[k].toString();
        return params;
    }


    public static byte[] intsToBytes(int[] values) {
        byte[] ret = new byte[values.length];
        for (int k = 0,len = values.length; k < len; k++)
            ret[k] =  (byte)values[k];
        return ret;
    }

    public static String[] extend(String[] args, int... paramsInFront) {
        String[] ret = new String[args.length+paramsInFront.length];
        for (int k = 0; k < paramsInFront.length; k++)
            ret[k] = paramsInFront[k]+"";

        System.arraycopy(args, 0, ret, paramsInFront.length, args.length);
           return ret;
    }

    public static String[] extend(String[] args, String paramInFront) {
        String[] ret = new String[args.length+1];
        ret[0] = paramInFront;
        System.arraycopy(args, 0, ret, 1, args.length);
        return ret;
    }

    public static String fourDigitString(int value) {
        String ret = value+"";
        if (ret.length() > 4)
            return ret.substring(0, 4);

        while (ret.length() < 4)
            ret = "0"+ret;
        return ret;
    }



}