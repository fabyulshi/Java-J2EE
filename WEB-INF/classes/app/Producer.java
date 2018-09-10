package app;

import crypto.MasterKeyGenerator;

public class Producer
{
    private Identity id;
    private MasterKeyGenerator kgen;

    public Producer(Identity id, MasterKeyGenerator kgen) {
        this.id = id;
        this.kgen = kgen;
    }
}
