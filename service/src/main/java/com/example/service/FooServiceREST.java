package com.example.service;

import com.example.contract.Foo;
import com.example.contract.FooService;

import javax.ws.rs.*;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

@Path("/")
public class FooServiceREST implements FooService {
    private final Map<String, Foo> foos = new HashMap<>();

    @Override
    @Path("/")
    @Produces("application/json")
    @GET
    public Collection<Foo> getFoos() {
        return foos.values();
    }

    @Override
    @Path("/{id}")
    @Produces("application/json")
    @GET
    public Foo getFoo(@PathParam("id") String id) {
        return foos.get(id);
    }

    @Override
    @Path("/")
    @Consumes("application/json")
    @POST
    public void addFoo(Foo foo) {
        foos.put(foo.getBar(), foo);
    }
}
