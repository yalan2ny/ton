fun failOnInstantiation(a: slice) {
    var b: slice = foo(a);
}

fun bar<X>(value: X) : X {
    return 1;
}
fun foo<X>(value: X) : X {
    return bar(value);
}

/**
@compilation_should_fail
@stderr while instantiating generic function `foo<slice>`
@stderr while instantiating generic function `bar<slice>`
@stderr can not convert type `int` to return type `slice`
@stderr return 1
 */
