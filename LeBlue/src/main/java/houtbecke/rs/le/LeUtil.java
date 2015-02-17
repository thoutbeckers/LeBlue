package houtbecke.rs.le;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.StringTokenizer;
import java.util.UUID;

public class LeUtil {
    public static String bytesToString(byte[] bytes) {
        if (bytes == null) return "";
        StringBuilder builder = new StringBuilder();
        for (byte b: bytes) {
            builder.append(b & 0xFF).append(",");
        }
        String bytesString = builder.toString();
        if (bytesString.length() > 0)
            return bytesString.substring(0, bytesString.length() - 1);
        return bytesString;
    }

    public static byte[] stringToBytes(String string) {
        StringTokenizer tokenizer = new StringTokenizer(string, ",");
        byte[] bytes = new byte[tokenizer.countTokens()];
        for (int k=0; k<bytes.length; k++){
            try {
                bytes[k] = (byte) Integer.parseInt(tokenizer.nextToken());
            }catch(NumberFormatException e){

            }
        }
        return bytes;
    }

    public static byte[] hexStringToBytes(String s) {
        int len = s.length();
        byte[] data = new byte[len/2];

        for(int i = 0; i < len; i+=2){
            data[i/2] = (byte) ((Character.digit(s.charAt(i), 16) << 4) + Character.digit(s.charAt(i+1), 16));
        }

        return data;
    }

    final protected static char[] hexArray = {'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};
    public static String bytesToHexString(byte[] bytes) {
        if (bytes == null) return "";

        char[] hexChars = new char[bytes.length*2];
        int v;

        for(int j=0; j < bytes.length; j++) {
            v = bytes[j] & 0xFF;
            hexChars[j*2] = hexArray[v>>>4];
            hexChars[j*2 + 1] = hexArray[v & 0x0F];
        }

        return new String(hexChars);
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



    public static LeScanRecord parseLeScanRecord(byte[] scanrecord) {
        return new LeScanRecordImpl(scanrecord);
    }

}