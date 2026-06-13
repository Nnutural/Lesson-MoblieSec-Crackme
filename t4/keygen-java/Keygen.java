import java.math.BigInteger;
import java.security.MessageDigest;

public class Keygen {
    public static String generate(String deviceId) throws Exception {
        MessageDigest md5 = MessageDigest.getInstance("MD5");
        md5.update(deviceId.getBytes(), 0, deviceId.length());

        byte[] digest = md5.digest();
        byte[] transform = new byte[digest.length];

        int digestPos = 0;
        int transformPos = 0;
        while (digestPos < digest.length) {
            int nextPos = digestPos >= digest.length - 1 ? 0 : digestPos + 1;
            transform[transformPos] = (byte) (digest[digestPos] ^ digest[nextPos]);
            digestPos += 2;
            transformPos++;
        }

        return new BigInteger(1, transform).toString(16).substring(0, 15);
    }

    public static void main(String[] args) throws Exception {
        if (args.length != 1) {
            System.err.println("Usage: java Keygen <device_id_or_imei>");
            System.exit(1);
        }

        System.out.println(generate(args[0]));
    }
}
