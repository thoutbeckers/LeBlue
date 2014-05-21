package tests

import org.junit.Test

import houtbecke.rs.le.session.MockedResponseObject


public class MockedResponseTest {

    @Test
    public void testMockedResponse() {
        MockedResponseObject mr = new MockedResponseObject([] as String[])
        assert mr.isForArguments(null)
        assert mr.isForArguments([] as String[])
        assert mr.isForArguments(["merp"] as String[])


        mr.forArguments("merp", 0);
        assert mr.isForArguments(["merp"] as String[])
        assert !mr.isForArguments(["herp"]  as String[])
        assert !mr.isForArguments([null] as String[])

        mr.forArguments(null, 0);
        assert mr.isForArguments([null] as String[])
        assert !mr.isForArguments(["merp"] as String[])

        mr.forArguments("merp", 1);
        assert !mr.isForArguments(["merp"] as String[])
        assert mr.isForArguments([null, "merp"] as String[])

        mr.destroyAfterUse()

        assert mr.isSelfDestroying()

    }


}
