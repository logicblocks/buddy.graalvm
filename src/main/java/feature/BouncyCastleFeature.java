package feature;

import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.graalvm.nativeimage.hosted.Feature;

import java.security.Security;

public class BouncyCastleFeature implements Feature {
    @Override
    public void afterRegistration(AfterRegistrationAccess access) {
        Security.addProvider(new BouncyCastleProvider());
    }
}
