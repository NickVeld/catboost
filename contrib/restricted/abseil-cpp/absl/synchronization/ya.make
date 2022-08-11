# Generated by devtools/yamaker.

LIBRARY()



LICENSE(Apache-2.0)

LICENSE_TEXTS(.yandex_meta/licenses.list.txt)

PEERDIR(
    contrib/restricted/abseil-cpp/absl/base
    contrib/restricted/abseil-cpp/absl/debugging
    contrib/restricted/abseil-cpp/absl/demangle
    contrib/restricted/abseil-cpp/absl/numeric
    contrib/restricted/abseil-cpp/absl/strings
    contrib/restricted/abseil-cpp/absl/time
)

ADDINCL(
    GLOBAL contrib/restricted/abseil-cpp
)

NO_COMPILER_WARNINGS()

NO_UTIL()

CFLAGS(
    -DNOMINMAX
)

SRCS(
    barrier.cc
    blocking_counter.cc
    internal/create_thread_identity.cc
    internal/graphcycles.cc
    internal/per_thread_sem.cc
    internal/waiter.cc
    mutex.cc
    notification.cc
)

END()
