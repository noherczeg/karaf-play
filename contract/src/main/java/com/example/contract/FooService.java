package com.example.contract;

import java.util.Collection;

public interface FooService {
    Collection<Foo> getFoos();

    Foo getFoo(String id);

    void addFoo(Foo foo);
}
