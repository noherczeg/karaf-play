package com.example.contract;

import lombok.Builder;
import lombok.Data;

@Builder
@Data
public class Foo {
    String bar;
    Integer baz;
}
