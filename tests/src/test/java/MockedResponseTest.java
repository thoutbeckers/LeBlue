import org.junit.Test;

import houtbecke.rs.le.session.MockedResponseObject;

public class MockedResponseTest {
    @Test
    public void testMockedResponse() {
        MockedResponseObject mr = new MockedResponseObject(new String[0]);
        assert mr.isForArguments(null);
        assert mr.isForArguments(new String[0]);
        assert mr.isForArguments(new String[]{"merp"});


        mr.forArguments("merp", 0);
        assert mr.isForArguments(new String[]{"merp"});
        assert !mr.isForArguments(new String[]{"herp"});
        assert !mr.isForArguments(new String[]{null});

        mr.forArguments(null, 0);
        assert mr.isForArguments(new String[]{null});
        assert !mr.isForArguments(new String[]{"merp"});

        mr.forArguments("merp", 1);

        String[] merp = new String[]{"merp"};
        String[] nullmerp = new String[]{null,"merp"};

        assert !mr.isForArguments(merp);
        assert mr.isForArguments(nullmerp);

        mr.destroyAfterUse();

        assert mr.isSelfDestroying();

    }

}
