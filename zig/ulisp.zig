pub const __builtin_bswap16 = @import("std").zig.c_builtins.__builtin_bswap16;
pub const __builtin_bswap32 = @import("std").zig.c_builtins.__builtin_bswap32;
pub const __builtin_bswap64 = @import("std").zig.c_builtins.__builtin_bswap64;
pub const __builtin_signbit = @import("std").zig.c_builtins.__builtin_signbit;
pub const __builtin_signbitf = @import("std").zig.c_builtins.__builtin_signbitf;
pub const __builtin_popcount = @import("std").zig.c_builtins.__builtin_popcount;
pub const __builtin_ctz = @import("std").zig.c_builtins.__builtin_ctz;
pub const __builtin_clz = @import("std").zig.c_builtins.__builtin_clz;
pub const __builtin_sqrt = @import("std").zig.c_builtins.__builtin_sqrt;
pub const __builtin_sqrtf = @import("std").zig.c_builtins.__builtin_sqrtf;
pub const __builtin_sin = @import("std").zig.c_builtins.__builtin_sin;
pub const __builtin_sinf = @import("std").zig.c_builtins.__builtin_sinf;
pub const __builtin_cos = @import("std").zig.c_builtins.__builtin_cos;
pub const __builtin_cosf = @import("std").zig.c_builtins.__builtin_cosf;
pub const __builtin_exp = @import("std").zig.c_builtins.__builtin_exp;
pub const __builtin_expf = @import("std").zig.c_builtins.__builtin_expf;
pub const __builtin_exp2 = @import("std").zig.c_builtins.__builtin_exp2;
pub const __builtin_exp2f = @import("std").zig.c_builtins.__builtin_exp2f;
pub const __builtin_log = @import("std").zig.c_builtins.__builtin_log;
pub const __builtin_logf = @import("std").zig.c_builtins.__builtin_logf;
pub const __builtin_log2 = @import("std").zig.c_builtins.__builtin_log2;
pub const __builtin_log2f = @import("std").zig.c_builtins.__builtin_log2f;
pub const __builtin_log10 = @import("std").zig.c_builtins.__builtin_log10;
pub const __builtin_log10f = @import("std").zig.c_builtins.__builtin_log10f;
pub const __builtin_abs = @import("std").zig.c_builtins.__builtin_abs;
pub const __builtin_labs = @import("std").zig.c_builtins.__builtin_labs;
pub const __builtin_llabs = @import("std").zig.c_builtins.__builtin_llabs;
pub const __builtin_fabs = @import("std").zig.c_builtins.__builtin_fabs;
pub const __builtin_fabsf = @import("std").zig.c_builtins.__builtin_fabsf;
pub const __builtin_floor = @import("std").zig.c_builtins.__builtin_floor;
pub const __builtin_floorf = @import("std").zig.c_builtins.__builtin_floorf;
pub const __builtin_ceil = @import("std").zig.c_builtins.__builtin_ceil;
pub const __builtin_ceilf = @import("std").zig.c_builtins.__builtin_ceilf;
pub const __builtin_trunc = @import("std").zig.c_builtins.__builtin_trunc;
pub const __builtin_truncf = @import("std").zig.c_builtins.__builtin_truncf;
pub const __builtin_round = @import("std").zig.c_builtins.__builtin_round;
pub const __builtin_roundf = @import("std").zig.c_builtins.__builtin_roundf;
pub const __builtin_strlen = @import("std").zig.c_builtins.__builtin_strlen;
pub const __builtin_strcmp = @import("std").zig.c_builtins.__builtin_strcmp;
pub const __builtin_object_size = @import("std").zig.c_builtins.__builtin_object_size;
pub const __builtin___memset_chk = @import("std").zig.c_builtins.__builtin___memset_chk;
pub const __builtin_memset = @import("std").zig.c_builtins.__builtin_memset;
pub const __builtin___memcpy_chk = @import("std").zig.c_builtins.__builtin___memcpy_chk;
pub const __builtin_memcpy = @import("std").zig.c_builtins.__builtin_memcpy;
pub const __builtin_expect = @import("std").zig.c_builtins.__builtin_expect;
pub const __builtin_nanf = @import("std").zig.c_builtins.__builtin_nanf;
pub const __builtin_huge_valf = @import("std").zig.c_builtins.__builtin_huge_valf;
pub const __builtin_inff = @import("std").zig.c_builtins.__builtin_inff;
pub const __builtin_isnan = @import("std").zig.c_builtins.__builtin_isnan;
pub const __builtin_isinf = @import("std").zig.c_builtins.__builtin_isinf;
pub const __builtin_isinf_sign = @import("std").zig.c_builtins.__builtin_isinf_sign;
pub const __has_builtin = @import("std").zig.c_builtins.__has_builtin;
pub const __builtin_assume = @import("std").zig.c_builtins.__builtin_assume;
pub const __builtin_unreachable = @import("std").zig.c_builtins.__builtin_unreachable;
pub const __builtin_constant_p = @import("std").zig.c_builtins.__builtin_constant_p;
pub const __builtin_mul_overflow = @import("std").zig.c_builtins.__builtin_mul_overflow;
pub export const LispLibrary: [23:0]u8 = "(defvar version \"4.8d\")".*;
pub const __jmp_buf = [8]c_long;
pub const __sigset_t = extern struct {
    __val: [16]c_ulong = @import("std").mem.zeroes([16]c_ulong),
};
pub const struct___jmp_buf_tag = extern struct {
    __jmpbuf: __jmp_buf = @import("std").mem.zeroes(__jmp_buf),
    __mask_was_saved: c_int = @import("std").mem.zeroes(c_int),
    __saved_mask: __sigset_t = @import("std").mem.zeroes(__sigset_t),
};
pub const jmp_buf = [1]struct___jmp_buf_tag;
pub extern fn setjmp(__env: [*c]struct___jmp_buf_tag) c_int;
pub extern fn __sigsetjmp(__env: [*c]struct___jmp_buf_tag, __savemask: c_int) c_int;
pub extern fn _setjmp(__env: [*c]struct___jmp_buf_tag) c_int;
pub extern fn longjmp(__env: [*c]struct___jmp_buf_tag, __val: c_int) noreturn;
pub extern fn _longjmp(__env: [*c]struct___jmp_buf_tag, __val: c_int) noreturn;
pub const sigjmp_buf = [1]struct___jmp_buf_tag;
pub extern fn siglongjmp(__env: [*c]struct___jmp_buf_tag, __val: c_int) noreturn;
pub const __u_char = u8;
pub const __u_short = c_ushort;
pub const __u_int = c_uint;
pub const __u_long = c_ulong;
pub const __int8_t = i8;
pub const __uint8_t = u8;
pub const __int16_t = c_short;
pub const __uint16_t = c_ushort;
pub const __int32_t = c_int;
pub const __uint32_t = c_uint;
pub const __int64_t = c_long;
pub const __uint64_t = c_ulong;
pub const __int_least8_t = __int8_t;
pub const __uint_least8_t = __uint8_t;
pub const __int_least16_t = __int16_t;
pub const __uint_least16_t = __uint16_t;
pub const __int_least32_t = __int32_t;
pub const __uint_least32_t = __uint32_t;
pub const __int_least64_t = __int64_t;
pub const __uint_least64_t = __uint64_t;
pub const __quad_t = c_long;
pub const __u_quad_t = c_ulong;
pub const __intmax_t = c_long;
pub const __uintmax_t = c_ulong;
pub const __dev_t = c_ulong;
pub const __uid_t = c_uint;
pub const __gid_t = c_uint;
pub const __ino_t = c_ulong;
pub const __ino64_t = c_ulong;
pub const __mode_t = c_uint;
pub const __nlink_t = c_ulong;
pub const __off_t = c_long;
pub const __off64_t = c_long;
pub const __pid_t = c_int;
pub const __fsid_t = extern struct {
    __val: [2]c_int = @import("std").mem.zeroes([2]c_int),
};
pub const __clock_t = c_long;
pub const __rlim_t = c_ulong;
pub const __rlim64_t = c_ulong;
pub const __id_t = c_uint;
pub const __time_t = c_long;
pub const __useconds_t = c_uint;
pub const __suseconds_t = c_long;
pub const __suseconds64_t = c_long;
pub const __daddr_t = c_int;
pub const __key_t = c_int;
pub const __clockid_t = c_int;
pub const __timer_t = ?*anyopaque;
pub const __blksize_t = c_long;
pub const __blkcnt_t = c_long;
pub const __blkcnt64_t = c_long;
pub const __fsblkcnt_t = c_ulong;
pub const __fsblkcnt64_t = c_ulong;
pub const __fsfilcnt_t = c_ulong;
pub const __fsfilcnt64_t = c_ulong;
pub const __fsword_t = c_long;
pub const __ssize_t = c_long;
pub const __syscall_slong_t = c_long;
pub const __syscall_ulong_t = c_ulong;
pub const __loff_t = __off64_t;
pub const __caddr_t = [*c]u8;
pub const __intptr_t = c_long;
pub const __socklen_t = c_uint;
pub const __sig_atomic_t = c_int;
pub const int_least8_t = __int_least8_t;
pub const int_least16_t = __int_least16_t;
pub const int_least32_t = __int_least32_t;
pub const int_least64_t = __int_least64_t;
pub const uint_least8_t = __uint_least8_t;
pub const uint_least16_t = __uint_least16_t;
pub const uint_least32_t = __uint_least32_t;
pub const uint_least64_t = __uint_least64_t;
pub const int_fast8_t = i8;
pub const int_fast16_t = c_long;
pub const int_fast32_t = c_long;
pub const int_fast64_t = c_long;
pub const uint_fast8_t = u8;
pub const uint_fast16_t = c_ulong;
pub const uint_fast32_t = c_ulong;
pub const uint_fast64_t = c_ulong;
pub const intmax_t = __intmax_t;
pub const uintmax_t = __uintmax_t;
pub const wchar_t = c_int;
pub const _Float32 = f32;
pub const _Float64 = f64;
pub const _Float32x = f64;
pub const _Float64x = c_longdouble;
pub const div_t = extern struct {
    quot: c_int = @import("std").mem.zeroes(c_int),
    rem: c_int = @import("std").mem.zeroes(c_int),
};
pub const ldiv_t = extern struct {
    quot: c_long = @import("std").mem.zeroes(c_long),
    rem: c_long = @import("std").mem.zeroes(c_long),
};
pub const lldiv_t = extern struct {
    quot: c_longlong = @import("std").mem.zeroes(c_longlong),
    rem: c_longlong = @import("std").mem.zeroes(c_longlong),
};
pub extern fn __ctype_get_mb_cur_max() usize;
pub extern fn atof(__nptr: [*c]const u8) f64;
pub extern fn atoi(__nptr: [*c]const u8) c_int;
pub extern fn atol(__nptr: [*c]const u8) c_long;
pub extern fn atoll(__nptr: [*c]const u8) c_longlong;
pub extern fn strtod(__nptr: [*c]const u8, __endptr: [*c][*c]u8) f64;
pub extern fn strtof(__nptr: [*c]const u8, __endptr: [*c][*c]u8) f32;
pub extern fn strtold(__nptr: [*c]const u8, __endptr: [*c][*c]u8) c_longdouble;
pub extern fn strtol(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_long;
pub extern fn strtoul(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulong;
pub extern fn strtoq(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_longlong;
pub extern fn strtouq(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
pub extern fn strtoll(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_longlong;
pub extern fn strtoull(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
pub extern fn l64a(__n: c_long) [*c]u8;
pub extern fn a64l(__s: [*c]const u8) c_long;
pub const u_char = __u_char;
pub const u_short = __u_short;
pub const u_int = __u_int;
pub const u_long = __u_long;
pub const quad_t = __quad_t;
pub const u_quad_t = __u_quad_t;
pub const fsid_t = __fsid_t;
pub const loff_t = __loff_t;
pub const ino_t = __ino_t;
pub const dev_t = __dev_t;
pub const gid_t = __gid_t;
pub const mode_t = __mode_t;
pub const nlink_t = __nlink_t;
pub const uid_t = __uid_t;
pub const off_t = __off_t;
pub const pid_t = __pid_t;
pub const id_t = __id_t;
pub const daddr_t = __daddr_t;
pub const caddr_t = __caddr_t;
pub const key_t = __key_t;
pub const clock_t = __clock_t;
pub const clockid_t = __clockid_t;
pub const time_t = __time_t;
pub const timer_t = __timer_t;
pub const ulong = c_ulong;
pub const ushort = c_ushort;
pub const uint = c_uint;
pub const u_int8_t = __uint8_t;
pub const u_int16_t = __uint16_t;
pub const u_int32_t = __uint32_t;
pub const u_int64_t = __uint64_t;
pub const register_t = c_long;
pub fn __bswap_16(arg___bsx: __uint16_t) callconv(.c) __uint16_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return @as(__uint16_t, @bitCast(@as(c_short, @truncate(((@as(c_int, @bitCast(@as(c_uint, __bsx))) >> @intCast(8)) & @as(c_int, 255)) | ((@as(c_int, @bitCast(@as(c_uint, __bsx))) & @as(c_int, 255)) << @intCast(8))))));
}
pub fn __bswap_32(arg___bsx: __uint32_t) callconv(.c) __uint32_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return ((((__bsx & @as(c_uint, 4278190080)) >> @intCast(24)) | ((__bsx & @as(c_uint, 16711680)) >> @intCast(8))) | ((__bsx & @as(c_uint, 65280)) << @intCast(8))) | ((__bsx & @as(c_uint, 255)) << @intCast(24));
}
pub fn __bswap_64(arg___bsx: __uint64_t) callconv(.c) __uint64_t {
    var __bsx = arg___bsx;
    _ = &__bsx;
    return @as(__uint64_t, @bitCast(@as(c_ulong, @truncate(((((((((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 18374686479671623680)) >> @intCast(56)) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 71776119061217280)) >> @intCast(40))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 280375465082880)) >> @intCast(24))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 1095216660480)) >> @intCast(8))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 4278190080)) << @intCast(8))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 16711680)) << @intCast(24))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 65280)) << @intCast(40))) | ((@as(c_ulonglong, @bitCast(@as(c_ulonglong, __bsx))) & @as(c_ulonglong, 255)) << @intCast(56))))));
}
pub fn __uint16_identity(arg___x: __uint16_t) callconv(.c) __uint16_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
pub fn __uint32_identity(arg___x: __uint32_t) callconv(.c) __uint32_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
pub fn __uint64_identity(arg___x: __uint64_t) callconv(.c) __uint64_t {
    var __x = arg___x;
    _ = &__x;
    return __x;
}
pub const sigset_t = __sigset_t;
pub const struct_timeval = extern struct {
    tv_sec: __time_t = @import("std").mem.zeroes(__time_t),
    tv_usec: __suseconds_t = @import("std").mem.zeroes(__suseconds_t),
};
pub const struct_timespec = extern struct {
    tv_sec: __time_t = @import("std").mem.zeroes(__time_t),
    tv_nsec: __syscall_slong_t = @import("std").mem.zeroes(__syscall_slong_t),
};
pub const suseconds_t = __suseconds_t;
pub const __fd_mask = c_long;
pub const fd_set = extern struct {
    __fds_bits: [16]__fd_mask = @import("std").mem.zeroes([16]__fd_mask),
};
pub const fd_mask = __fd_mask;
pub extern fn select(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]struct_timeval) c_int;
pub extern fn pselect(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]const struct_timespec, noalias __sigmask: [*c]const __sigset_t) c_int;
pub const blksize_t = __blksize_t;
pub const blkcnt_t = __blkcnt_t;
pub const fsblkcnt_t = __fsblkcnt_t;
pub const fsfilcnt_t = __fsfilcnt_t;
const struct_unnamed_1 = extern struct {
    __low: c_uint = @import("std").mem.zeroes(c_uint),
    __high: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const __atomic_wide_counter = extern union {
    __value64: c_ulonglong,
    __value32: struct_unnamed_1,
};
pub const struct___pthread_internal_list = extern struct {
    __prev: [*c]struct___pthread_internal_list = @import("std").mem.zeroes([*c]struct___pthread_internal_list),
    __next: [*c]struct___pthread_internal_list = @import("std").mem.zeroes([*c]struct___pthread_internal_list),
};
pub const __pthread_list_t = struct___pthread_internal_list;
pub const struct___pthread_internal_slist = extern struct {
    __next: [*c]struct___pthread_internal_slist = @import("std").mem.zeroes([*c]struct___pthread_internal_slist),
};
pub const __pthread_slist_t = struct___pthread_internal_slist;
pub const struct___pthread_mutex_s = extern struct {
    __lock: c_int = @import("std").mem.zeroes(c_int),
    __count: c_uint = @import("std").mem.zeroes(c_uint),
    __owner: c_int = @import("std").mem.zeroes(c_int),
    __nusers: c_uint = @import("std").mem.zeroes(c_uint),
    __kind: c_int = @import("std").mem.zeroes(c_int),
    __spins: c_short = @import("std").mem.zeroes(c_short),
    __elision: c_short = @import("std").mem.zeroes(c_short),
    __list: __pthread_list_t = @import("std").mem.zeroes(__pthread_list_t),
};
pub const struct___pthread_rwlock_arch_t = extern struct {
    __readers: c_uint = @import("std").mem.zeroes(c_uint),
    __writers: c_uint = @import("std").mem.zeroes(c_uint),
    __wrphase_futex: c_uint = @import("std").mem.zeroes(c_uint),
    __writers_futex: c_uint = @import("std").mem.zeroes(c_uint),
    __pad3: c_uint = @import("std").mem.zeroes(c_uint),
    __pad4: c_uint = @import("std").mem.zeroes(c_uint),
    __cur_writer: c_int = @import("std").mem.zeroes(c_int),
    __shared: c_int = @import("std").mem.zeroes(c_int),
    __rwelision: i8 = @import("std").mem.zeroes(i8),
    __pad1: [7]u8 = @import("std").mem.zeroes([7]u8),
    __pad2: c_ulong = @import("std").mem.zeroes(c_ulong),
    __flags: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const struct___pthread_cond_s = extern struct {
    __wseq: __atomic_wide_counter = @import("std").mem.zeroes(__atomic_wide_counter),
    __g1_start: __atomic_wide_counter = @import("std").mem.zeroes(__atomic_wide_counter),
    __g_refs: [2]c_uint = @import("std").mem.zeroes([2]c_uint),
    __g_size: [2]c_uint = @import("std").mem.zeroes([2]c_uint),
    __g1_orig_size: c_uint = @import("std").mem.zeroes(c_uint),
    __wrefs: c_uint = @import("std").mem.zeroes(c_uint),
    __g_signals: [2]c_uint = @import("std").mem.zeroes([2]c_uint),
};
pub const __tss_t = c_uint;
pub const __thrd_t = c_ulong;
pub const __once_flag = extern struct {
    __data: c_int = @import("std").mem.zeroes(c_int),
};
pub const pthread_t = c_ulong;
pub const pthread_mutexattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const pthread_condattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const pthread_key_t = c_uint;
pub const pthread_once_t = c_int;
pub const union_pthread_attr_t = extern union {
    __size: [56]u8,
    __align: c_long,
};
pub const pthread_attr_t = union_pthread_attr_t;
pub const pthread_mutex_t = extern union {
    __data: struct___pthread_mutex_s,
    __size: [40]u8,
    __align: c_long,
};
pub const pthread_cond_t = extern union {
    __data: struct___pthread_cond_s,
    __size: [48]u8,
    __align: c_longlong,
};
pub const pthread_rwlock_t = extern union {
    __data: struct___pthread_rwlock_arch_t,
    __size: [56]u8,
    __align: c_long,
};
pub const pthread_rwlockattr_t = extern union {
    __size: [8]u8,
    __align: c_long,
};
pub const pthread_spinlock_t = c_int;
pub const pthread_barrier_t = extern union {
    __size: [32]u8,
    __align: c_long,
};
pub const pthread_barrierattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub extern fn random() c_long;
pub extern fn srandom(__seed: c_uint) void;
pub extern fn initstate(__seed: c_uint, __statebuf: [*c]u8, __statelen: usize) [*c]u8;
pub extern fn setstate(__statebuf: [*c]u8) [*c]u8;
pub const struct_random_data = extern struct {
    fptr: [*c]i32 = @import("std").mem.zeroes([*c]i32),
    rptr: [*c]i32 = @import("std").mem.zeroes([*c]i32),
    state: [*c]i32 = @import("std").mem.zeroes([*c]i32),
    rand_type: c_int = @import("std").mem.zeroes(c_int),
    rand_deg: c_int = @import("std").mem.zeroes(c_int),
    rand_sep: c_int = @import("std").mem.zeroes(c_int),
    end_ptr: [*c]i32 = @import("std").mem.zeroes([*c]i32),
};
pub extern fn random_r(noalias __buf: [*c]struct_random_data, noalias __result: [*c]i32) c_int;
pub extern fn srandom_r(__seed: c_uint, __buf: [*c]struct_random_data) c_int;
pub extern fn initstate_r(__seed: c_uint, noalias __statebuf: [*c]u8, __statelen: usize, noalias __buf: [*c]struct_random_data) c_int;
pub extern fn setstate_r(noalias __statebuf: [*c]u8, noalias __buf: [*c]struct_random_data) c_int;
pub extern fn rand() c_int;
pub extern fn srand(__seed: c_uint) void;
pub extern fn rand_r(__seed: [*c]c_uint) c_int;
pub extern fn drand48() f64;
pub extern fn erand48(__xsubi: [*c]c_ushort) f64;
pub extern fn lrand48() c_long;
pub extern fn nrand48(__xsubi: [*c]c_ushort) c_long;
pub extern fn mrand48() c_long;
pub extern fn jrand48(__xsubi: [*c]c_ushort) c_long;
pub extern fn srand48(__seedval: c_long) void;
pub extern fn seed48(__seed16v: [*c]c_ushort) [*c]c_ushort;
pub extern fn lcong48(__param: [*c]c_ushort) void;
pub const struct_drand48_data = extern struct {
    __x: [3]c_ushort = @import("std").mem.zeroes([3]c_ushort),
    __old_x: [3]c_ushort = @import("std").mem.zeroes([3]c_ushort),
    __c: c_ushort = @import("std").mem.zeroes(c_ushort),
    __init: c_ushort = @import("std").mem.zeroes(c_ushort),
    __a: c_ulonglong = @import("std").mem.zeroes(c_ulonglong),
};
pub extern fn drand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]f64) c_int;
pub extern fn erand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]f64) c_int;
pub extern fn lrand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn nrand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn mrand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn jrand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn srand48_r(__seedval: c_long, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn seed48_r(__seed16v: [*c]c_ushort, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn lcong48_r(__param: [*c]c_ushort, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn malloc(__size: c_ulong) ?*anyopaque;
pub extern fn calloc(__nmemb: c_ulong, __size: c_ulong) ?*anyopaque;
pub extern fn realloc(__ptr: ?*anyopaque, __size: c_ulong) ?*anyopaque;
pub extern fn free(__ptr: ?*anyopaque) void;
pub extern fn reallocarray(__ptr: ?*anyopaque, __nmemb: usize, __size: usize) ?*anyopaque;
pub extern fn alloca(__size: c_ulong) ?*anyopaque;
pub extern fn valloc(__size: usize) ?*anyopaque;
pub extern fn posix_memalign(__memptr: [*c]?*anyopaque, __alignment: usize, __size: usize) c_int;
pub extern fn aligned_alloc(__alignment: c_ulong, __size: c_ulong) ?*anyopaque;
pub extern fn abort() noreturn;
pub extern fn atexit(__func: ?*const fn () callconv(.c) void) c_int;
pub extern fn at_quick_exit(__func: ?*const fn () callconv(.c) void) c_int;
pub extern fn on_exit(__func: ?*const fn (c_int, ?*anyopaque) callconv(.c) void, __arg: ?*anyopaque) c_int;
pub extern fn exit(__status: c_int) noreturn;
pub extern fn quick_exit(__status: c_int) noreturn;
pub extern fn _Exit(__status: c_int) noreturn;
pub extern fn getenv(__name: [*c]const u8) [*c]u8;
pub extern fn putenv(__string: [*c]u8) c_int;
pub extern fn setenv(__name: [*c]const u8, __value: [*c]const u8, __replace: c_int) c_int;
pub extern fn unsetenv(__name: [*c]const u8) c_int;
pub extern fn clearenv() c_int;
pub extern fn mktemp(__template: [*c]u8) [*c]u8;
pub extern fn mkstemp(__template: [*c]u8) c_int;
pub extern fn mkstemps(__template: [*c]u8, __suffixlen: c_int) c_int;
pub extern fn mkdtemp(__template: [*c]u8) [*c]u8;
pub extern fn system(__command: [*c]const u8) c_int;
pub extern fn realpath(noalias __name: [*c]const u8, noalias __resolved: [*c]u8) [*c]u8;
pub const __compar_fn_t = ?*const fn (?*const anyopaque, ?*const anyopaque) callconv(.c) c_int;
pub extern fn bsearch(__key: ?*const anyopaque, __base: ?*const anyopaque, __nmemb: usize, __size: usize, __compar: __compar_fn_t) ?*anyopaque;
pub extern fn qsort(__base: ?*anyopaque, __nmemb: usize, __size: usize, __compar: __compar_fn_t) void;
pub extern fn abs(__x: c_int) c_int;
pub extern fn labs(__x: c_long) c_long;
pub extern fn llabs(__x: c_longlong) c_longlong;
pub extern fn div(__numer: c_int, __denom: c_int) div_t;
pub extern fn ldiv(__numer: c_long, __denom: c_long) ldiv_t;
pub extern fn lldiv(__numer: c_longlong, __denom: c_longlong) lldiv_t;
pub extern fn ecvt(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn fcvt(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn gcvt(__value: f64, __ndigit: c_int, __buf: [*c]u8) [*c]u8;
pub extern fn qecvt(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn qfcvt(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn qgcvt(__value: c_longdouble, __ndigit: c_int, __buf: [*c]u8) [*c]u8;
pub extern fn ecvt_r(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn fcvt_r(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn qecvt_r(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn qfcvt_r(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn mblen(__s: [*c]const u8, __n: usize) c_int;
pub extern fn mbtowc(noalias __pwc: [*c]wchar_t, noalias __s: [*c]const u8, __n: usize) c_int;
pub extern fn wctomb(__s: [*c]u8, __wchar: wchar_t) c_int;
pub extern fn mbstowcs(noalias __pwcs: [*c]wchar_t, noalias __s: [*c]const u8, __n: usize) usize;
pub extern fn wcstombs(noalias __s: [*c]u8, noalias __pwcs: [*c]const wchar_t, __n: usize) usize;
pub extern fn rpmatch(__response: [*c]const u8) c_int;
pub extern fn getsubopt(noalias __optionp: [*c][*c]u8, noalias __tokens: [*c]const [*c]u8, noalias __valuep: [*c][*c]u8) c_int;
pub extern fn getloadavg(__loadavg: [*c]f64, __nelem: c_int) c_int;
pub const struct___va_list_tag_2 = extern struct {
    gp_offset: c_uint = @import("std").mem.zeroes(c_uint),
    fp_offset: c_uint = @import("std").mem.zeroes(c_uint),
    overflow_arg_area: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    reg_save_area: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
};
pub const __builtin_va_list = [1]struct___va_list_tag_2;
pub const __gnuc_va_list = __builtin_va_list;
const union_unnamed_3 = extern union {
    __wch: c_uint,
    __wchb: [4]u8,
};
pub const __mbstate_t = extern struct {
    __count: c_int = @import("std").mem.zeroes(c_int),
    __value: union_unnamed_3 = @import("std").mem.zeroes(union_unnamed_3),
};
pub const struct__G_fpos_t = extern struct {
    __pos: __off_t = @import("std").mem.zeroes(__off_t),
    __state: __mbstate_t = @import("std").mem.zeroes(__mbstate_t),
};
pub const __fpos_t = struct__G_fpos_t;
pub const struct__G_fpos64_t = extern struct {
    __pos: __off64_t = @import("std").mem.zeroes(__off64_t),
    __state: __mbstate_t = @import("std").mem.zeroes(__mbstate_t),
};
pub const __fpos64_t = struct__G_fpos64_t;
pub const struct__IO_marker = opaque {};
pub const _IO_lock_t = anyopaque;
pub const struct__IO_codecvt = opaque {};
pub const struct__IO_wide_data = opaque {};
pub const struct__IO_FILE = extern struct {
    _flags: c_int = @import("std").mem.zeroes(c_int),
    _IO_read_ptr: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_read_end: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_read_base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_write_base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_write_ptr: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_write_end: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_buf_base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_buf_end: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_save_base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_backup_base: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _IO_save_end: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    _markers: ?*struct__IO_marker = @import("std").mem.zeroes(?*struct__IO_marker),
    _chain: [*c]struct__IO_FILE = @import("std").mem.zeroes([*c]struct__IO_FILE),
    _fileno: c_int = @import("std").mem.zeroes(c_int),
    _flags2: c_int = @import("std").mem.zeroes(c_int),
    _old_offset: __off_t = @import("std").mem.zeroes(__off_t),
    _cur_column: c_ushort = @import("std").mem.zeroes(c_ushort),
    _vtable_offset: i8 = @import("std").mem.zeroes(i8),
    _shortbuf: [1]u8 = @import("std").mem.zeroes([1]u8),
    _lock: ?*_IO_lock_t = @import("std").mem.zeroes(?*_IO_lock_t),
    _offset: __off64_t = @import("std").mem.zeroes(__off64_t),
    _codecvt: ?*struct__IO_codecvt = @import("std").mem.zeroes(?*struct__IO_codecvt),
    _wide_data: ?*struct__IO_wide_data = @import("std").mem.zeroes(?*struct__IO_wide_data),
    _freeres_list: [*c]struct__IO_FILE = @import("std").mem.zeroes([*c]struct__IO_FILE),
    _freeres_buf: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque),
    __pad5: usize = @import("std").mem.zeroes(usize),
    _mode: c_int = @import("std").mem.zeroes(c_int),
    _unused2: [20]u8 = @import("std").mem.zeroes([20]u8),
};
pub const __FILE = struct__IO_FILE;
pub const FILE = struct__IO_FILE;
pub const va_list = __gnuc_va_list;
pub const fpos_t = __fpos_t;
pub extern var stdin: [*c]FILE;
pub extern var stdout: [*c]FILE;
pub extern var stderr: [*c]FILE;
pub extern fn remove(__filename: [*c]const u8) c_int;
pub extern fn rename(__old: [*c]const u8, __new: [*c]const u8) c_int;
pub extern fn renameat(__oldfd: c_int, __old: [*c]const u8, __newfd: c_int, __new: [*c]const u8) c_int;
pub extern fn fclose(__stream: [*c]FILE) c_int;
pub extern fn tmpfile() [*c]FILE;
pub extern fn tmpnam([*c]u8) [*c]u8;
pub extern fn tmpnam_r(__s: [*c]u8) [*c]u8;
pub extern fn tempnam(__dir: [*c]const u8, __pfx: [*c]const u8) [*c]u8;
pub extern fn fflush(__stream: [*c]FILE) c_int;
pub extern fn fflush_unlocked(__stream: [*c]FILE) c_int;
pub extern fn fopen(__filename: [*c]const u8, __modes: [*c]const u8) [*c]FILE;
pub extern fn freopen(noalias __filename: [*c]const u8, noalias __modes: [*c]const u8, noalias __stream: [*c]FILE) [*c]FILE;
pub extern fn fdopen(__fd: c_int, __modes: [*c]const u8) [*c]FILE;
pub extern fn fmemopen(__s: ?*anyopaque, __len: usize, __modes: [*c]const u8) [*c]FILE;
pub extern fn open_memstream(__bufloc: [*c][*c]u8, __sizeloc: [*c]usize) [*c]FILE;
pub extern fn setbuf(noalias __stream: [*c]FILE, noalias __buf: [*c]u8) void;
pub extern fn setvbuf(noalias __stream: [*c]FILE, noalias __buf: [*c]u8, __modes: c_int, __n: usize) c_int;
pub extern fn setbuffer(noalias __stream: [*c]FILE, noalias __buf: [*c]u8, __size: usize) void;
pub extern fn setlinebuf(__stream: [*c]FILE) void;
pub extern fn fprintf(noalias __stream: [*c]FILE, noalias __format: [*c]const u8, ...) c_int;
pub extern fn printf(__format: [*c]const u8, ...) c_int;
pub extern fn sprintf(noalias __s: [*c]u8, noalias __format: [*c]const u8, ...) c_int;
pub extern fn vfprintf(noalias __s: [*c]FILE, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_2) c_int;
pub extern fn vprintf(noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_2) c_int;
pub extern fn vsprintf(noalias __s: [*c]u8, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_2) c_int;
pub extern fn snprintf(noalias __s: [*c]u8, __maxlen: c_ulong, noalias __format: [*c]const u8, ...) c_int;
pub extern fn vsnprintf(noalias __s: [*c]u8, __maxlen: c_ulong, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_2) c_int;
pub extern fn vdprintf(__fd: c_int, noalias __fmt: [*c]const u8, __arg: [*c]struct___va_list_tag_2) c_int;
pub extern fn dprintf(__fd: c_int, noalias __fmt: [*c]const u8, ...) c_int;
pub extern fn fscanf(noalias __stream: [*c]FILE, noalias __format: [*c]const u8, ...) c_int;
pub extern fn scanf(noalias __format: [*c]const u8, ...) c_int;
pub extern fn sscanf(noalias __s: [*c]const u8, noalias __format: [*c]const u8, ...) c_int;
pub extern fn vfscanf(noalias __s: [*c]FILE, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_2) c_int;
pub extern fn vscanf(noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_2) c_int;
pub extern fn vsscanf(noalias __s: [*c]const u8, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag_2) c_int;
pub extern fn fgetc(__stream: [*c]FILE) c_int;
pub extern fn getc(__stream: [*c]FILE) c_int;
pub extern fn getchar() c_int;
pub extern fn getc_unlocked(__stream: [*c]FILE) c_int;
pub extern fn getchar_unlocked() c_int;
pub extern fn fgetc_unlocked(__stream: [*c]FILE) c_int;
pub extern fn fputc(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putc(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putchar(__c: c_int) c_int;
pub extern fn fputc_unlocked(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putc_unlocked(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putchar_unlocked(__c: c_int) c_int;
pub extern fn getw(__stream: [*c]FILE) c_int;
pub extern fn putw(__w: c_int, __stream: [*c]FILE) c_int;
pub extern fn fgets(noalias __s: [*c]u8, __n: c_int, noalias __stream: [*c]FILE) [*c]u8;
pub extern fn __getdelim(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, __delimiter: c_int, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn getdelim(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, __delimiter: c_int, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn getline(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn fputs(noalias __s: [*c]const u8, noalias __stream: [*c]FILE) c_int;
pub extern fn puts(__s: [*c]const u8) c_int;
pub extern fn ungetc(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn fread(__ptr: ?*anyopaque, __size: c_ulong, __n: c_ulong, __stream: [*c]FILE) c_ulong;
pub extern fn fwrite(__ptr: ?*const anyopaque, __size: c_ulong, __n: c_ulong, __s: [*c]FILE) c_ulong;
pub extern fn fread_unlocked(noalias __ptr: ?*anyopaque, __size: usize, __n: usize, noalias __stream: [*c]FILE) usize;
pub extern fn fwrite_unlocked(noalias __ptr: ?*const anyopaque, __size: usize, __n: usize, noalias __stream: [*c]FILE) usize;
pub extern fn fseek(__stream: [*c]FILE, __off: c_long, __whence: c_int) c_int;
pub extern fn ftell(__stream: [*c]FILE) c_long;
pub extern fn rewind(__stream: [*c]FILE) void;
pub extern fn fseeko(__stream: [*c]FILE, __off: __off_t, __whence: c_int) c_int;
pub extern fn ftello(__stream: [*c]FILE) __off_t;
pub extern fn fgetpos(noalias __stream: [*c]FILE, noalias __pos: [*c]fpos_t) c_int;
pub extern fn fsetpos(__stream: [*c]FILE, __pos: [*c]const fpos_t) c_int;
pub extern fn clearerr(__stream: [*c]FILE) void;
pub extern fn feof(__stream: [*c]FILE) c_int;
pub extern fn ferror(__stream: [*c]FILE) c_int;
pub extern fn clearerr_unlocked(__stream: [*c]FILE) void;
pub extern fn feof_unlocked(__stream: [*c]FILE) c_int;
pub extern fn ferror_unlocked(__stream: [*c]FILE) c_int;
pub extern fn perror(__s: [*c]const u8) void;
pub extern fn fileno(__stream: [*c]FILE) c_int;
pub extern fn fileno_unlocked(__stream: [*c]FILE) c_int;
pub extern fn pclose(__stream: [*c]FILE) c_int;
pub extern fn popen(__command: [*c]const u8, __modes: [*c]const u8) [*c]FILE;
pub extern fn ctermid(__s: [*c]u8) [*c]u8;
pub extern fn flockfile(__stream: [*c]FILE) void;
pub extern fn ftrylockfile(__stream: [*c]FILE) c_int;
pub extern fn funlockfile(__stream: [*c]FILE) void;
pub extern fn __uflow([*c]FILE) c_int;
pub extern fn __overflow([*c]FILE, c_int) c_int;
pub const float_t = f32;
pub const double_t = f64;
pub extern fn __fpclassify(__value: f64) c_int;
pub extern fn __signbit(__value: f64) c_int;
pub extern fn __isinf(__value: f64) c_int;
pub extern fn __finite(__value: f64) c_int;
pub extern fn __isnan(__value: f64) c_int;
pub extern fn __iseqsig(__x: f64, __y: f64) c_int;
pub extern fn __issignaling(__value: f64) c_int;
pub extern fn acos(__x: f64) f64;
pub extern fn __acos(__x: f64) f64;
pub extern fn asin(__x: f64) f64;
pub extern fn __asin(__x: f64) f64;
pub extern fn atan(__x: f64) f64;
pub extern fn __atan(__x: f64) f64;
pub extern fn atan2(__y: f64, __x: f64) f64;
pub extern fn __atan2(__y: f64, __x: f64) f64;
pub extern fn cos(__x: f64) f64;
pub extern fn __cos(__x: f64) f64;
pub extern fn sin(__x: f64) f64;
pub extern fn __sin(__x: f64) f64;
pub extern fn tan(__x: f64) f64;
pub extern fn __tan(__x: f64) f64;
pub extern fn cosh(__x: f64) f64;
pub extern fn __cosh(__x: f64) f64;
pub extern fn sinh(__x: f64) f64;
pub extern fn __sinh(__x: f64) f64;
pub extern fn tanh(__x: f64) f64;
pub extern fn __tanh(__x: f64) f64;
pub extern fn acosh(__x: f64) f64;
pub extern fn __acosh(__x: f64) f64;
pub extern fn asinh(__x: f64) f64;
pub extern fn __asinh(__x: f64) f64;
pub extern fn atanh(__x: f64) f64;
pub extern fn __atanh(__x: f64) f64;
pub extern fn exp(__x: f64) f64;
pub extern fn __exp(__x: f64) f64;
pub extern fn frexp(__x: f64, __exponent: [*c]c_int) f64;
pub extern fn __frexp(__x: f64, __exponent: [*c]c_int) f64;
pub extern fn ldexp(__x: f64, __exponent: c_int) f64;
pub extern fn __ldexp(__x: f64, __exponent: c_int) f64;
pub extern fn log(__x: f64) f64;
pub extern fn __log(__x: f64) f64;
pub extern fn log10(__x: f64) f64;
pub extern fn __log10(__x: f64) f64;
pub extern fn modf(__x: f64, __iptr: [*c]f64) f64;
pub extern fn __modf(__x: f64, __iptr: [*c]f64) f64;
pub extern fn expm1(__x: f64) f64;
pub extern fn __expm1(__x: f64) f64;
pub extern fn log1p(__x: f64) f64;
pub extern fn __log1p(__x: f64) f64;
pub extern fn logb(__x: f64) f64;
pub extern fn __logb(__x: f64) f64;
pub extern fn exp2(__x: f64) f64;
pub extern fn __exp2(__x: f64) f64;
pub extern fn log2(__x: f64) f64;
pub extern fn __log2(__x: f64) f64;
pub extern fn pow(__x: f64, __y: f64) f64;
pub extern fn __pow(__x: f64, __y: f64) f64;
pub extern fn sqrt(__x: f64) f64;
pub extern fn __sqrt(__x: f64) f64;
pub extern fn hypot(__x: f64, __y: f64) f64;
pub extern fn __hypot(__x: f64, __y: f64) f64;
pub extern fn cbrt(__x: f64) f64;
pub extern fn __cbrt(__x: f64) f64;
pub extern fn ceil(__x: f64) f64;
pub extern fn __ceil(__x: f64) f64;
pub extern fn fabs(__x: f64) f64;
pub extern fn __fabs(__x: f64) f64;
pub extern fn floor(__x: f64) f64;
pub extern fn __floor(__x: f64) f64;
pub extern fn fmod(__x: f64, __y: f64) f64;
pub extern fn __fmod(__x: f64, __y: f64) f64;
pub extern fn isinf(__value: f64) c_int;
pub extern fn finite(__value: f64) c_int;
pub extern fn drem(__x: f64, __y: f64) f64;
pub extern fn __drem(__x: f64, __y: f64) f64;
pub extern fn significand(__x: f64) f64;
pub extern fn __significand(__x: f64) f64;
pub extern fn copysign(__x: f64, __y: f64) f64;
pub extern fn __copysign(__x: f64, __y: f64) f64;
pub extern fn nan(__tagb: [*c]const u8) f64;
pub extern fn __nan(__tagb: [*c]const u8) f64;
pub extern fn isnan(__value: f64) c_int;
pub extern fn j0(f64) f64;
pub extern fn __j0(f64) f64;
pub extern fn j1(f64) f64;
pub extern fn __j1(f64) f64;
pub extern fn jn(c_int, f64) f64;
pub extern fn __jn(c_int, f64) f64;
pub extern fn y0(f64) f64;
pub extern fn __y0(f64) f64;
pub extern fn y1(f64) f64;
pub extern fn __y1(f64) f64;
pub extern fn yn(c_int, f64) f64;
pub extern fn __yn(c_int, f64) f64;
pub extern fn erf(f64) f64;
pub extern fn __erf(f64) f64;
pub extern fn erfc(f64) f64;
pub extern fn __erfc(f64) f64;
pub extern fn lgamma(f64) f64;
pub extern fn __lgamma(f64) f64;
pub extern fn tgamma(f64) f64;
pub extern fn __tgamma(f64) f64;
pub extern fn gamma(f64) f64;
pub extern fn __gamma(f64) f64;
pub extern fn lgamma_r(f64, __signgamp: [*c]c_int) f64;
pub extern fn __lgamma_r(f64, __signgamp: [*c]c_int) f64;
pub extern fn rint(__x: f64) f64;
pub extern fn __rint(__x: f64) f64;
pub extern fn nextafter(__x: f64, __y: f64) f64;
pub extern fn __nextafter(__x: f64, __y: f64) f64;
pub extern fn nexttoward(__x: f64, __y: c_longdouble) f64;
pub extern fn __nexttoward(__x: f64, __y: c_longdouble) f64;
pub extern fn remainder(__x: f64, __y: f64) f64;
pub extern fn __remainder(__x: f64, __y: f64) f64;
pub extern fn scalbn(__x: f64, __n: c_int) f64;
pub extern fn __scalbn(__x: f64, __n: c_int) f64;
pub extern fn ilogb(__x: f64) c_int;
pub extern fn __ilogb(__x: f64) c_int;
pub extern fn scalbln(__x: f64, __n: c_long) f64;
pub extern fn __scalbln(__x: f64, __n: c_long) f64;
pub extern fn nearbyint(__x: f64) f64;
pub extern fn __nearbyint(__x: f64) f64;
pub extern fn round(__x: f64) f64;
pub extern fn __round(__x: f64) f64;
pub extern fn trunc(__x: f64) f64;
pub extern fn __trunc(__x: f64) f64;
pub extern fn remquo(__x: f64, __y: f64, __quo: [*c]c_int) f64;
pub extern fn __remquo(__x: f64, __y: f64, __quo: [*c]c_int) f64;
pub extern fn lrint(__x: f64) c_long;
pub extern fn __lrint(__x: f64) c_long;
pub extern fn llrint(__x: f64) c_longlong;
pub extern fn __llrint(__x: f64) c_longlong;
pub extern fn lround(__x: f64) c_long;
pub extern fn __lround(__x: f64) c_long;
pub extern fn llround(__x: f64) c_longlong;
pub extern fn __llround(__x: f64) c_longlong;
pub extern fn fdim(__x: f64, __y: f64) f64;
pub extern fn __fdim(__x: f64, __y: f64) f64;
pub extern fn fmax(__x: f64, __y: f64) f64;
pub extern fn __fmax(__x: f64, __y: f64) f64;
pub extern fn fmin(__x: f64, __y: f64) f64;
pub extern fn __fmin(__x: f64, __y: f64) f64;
pub extern fn fma(__x: f64, __y: f64, __z: f64) f64;
pub extern fn __fma(__x: f64, __y: f64, __z: f64) f64;
pub extern fn scalb(__x: f64, __n: f64) f64;
pub extern fn __scalb(__x: f64, __n: f64) f64;
pub extern fn __fpclassifyf(__value: f32) c_int;
pub extern fn __signbitf(__value: f32) c_int;
pub extern fn __isinff(__value: f32) c_int;
pub extern fn __finitef(__value: f32) c_int;
pub extern fn __isnanf(__value: f32) c_int;
pub extern fn __iseqsigf(__x: f32, __y: f32) c_int;
pub extern fn __issignalingf(__value: f32) c_int;
pub extern fn acosf(__x: f32) f32;
pub extern fn __acosf(__x: f32) f32;
pub extern fn asinf(__x: f32) f32;
pub extern fn __asinf(__x: f32) f32;
pub extern fn atanf(__x: f32) f32;
pub extern fn __atanf(__x: f32) f32;
pub extern fn atan2f(__y: f32, __x: f32) f32;
pub extern fn __atan2f(__y: f32, __x: f32) f32;
pub extern fn cosf(__x: f32) f32;
pub extern fn __cosf(__x: f32) f32;
pub extern fn sinf(__x: f32) f32;
pub extern fn __sinf(__x: f32) f32;
pub extern fn tanf(__x: f32) f32;
pub extern fn __tanf(__x: f32) f32;
pub extern fn coshf(__x: f32) f32;
pub extern fn __coshf(__x: f32) f32;
pub extern fn sinhf(__x: f32) f32;
pub extern fn __sinhf(__x: f32) f32;
pub extern fn tanhf(__x: f32) f32;
pub extern fn __tanhf(__x: f32) f32;
pub extern fn acoshf(__x: f32) f32;
pub extern fn __acoshf(__x: f32) f32;
pub extern fn asinhf(__x: f32) f32;
pub extern fn __asinhf(__x: f32) f32;
pub extern fn atanhf(__x: f32) f32;
pub extern fn __atanhf(__x: f32) f32;
pub extern fn expf(__x: f32) f32;
pub extern fn __expf(__x: f32) f32;
pub extern fn frexpf(__x: f32, __exponent: [*c]c_int) f32;
pub extern fn __frexpf(__x: f32, __exponent: [*c]c_int) f32;
pub extern fn ldexpf(__x: f32, __exponent: c_int) f32;
pub extern fn __ldexpf(__x: f32, __exponent: c_int) f32;
pub extern fn logf(__x: f32) f32;
pub extern fn __logf(__x: f32) f32;
pub extern fn log10f(__x: f32) f32;
pub extern fn __log10f(__x: f32) f32;
pub extern fn modff(__x: f32, __iptr: [*c]f32) f32;
pub extern fn __modff(__x: f32, __iptr: [*c]f32) f32;
pub extern fn expm1f(__x: f32) f32;
pub extern fn __expm1f(__x: f32) f32;
pub extern fn log1pf(__x: f32) f32;
pub extern fn __log1pf(__x: f32) f32;
pub extern fn logbf(__x: f32) f32;
pub extern fn __logbf(__x: f32) f32;
pub extern fn exp2f(__x: f32) f32;
pub extern fn __exp2f(__x: f32) f32;
pub extern fn log2f(__x: f32) f32;
pub extern fn __log2f(__x: f32) f32;
pub extern fn powf(__x: f32, __y: f32) f32;
pub extern fn __powf(__x: f32, __y: f32) f32;
pub extern fn sqrtf(__x: f32) f32;
pub extern fn __sqrtf(__x: f32) f32;
pub extern fn hypotf(__x: f32, __y: f32) f32;
pub extern fn __hypotf(__x: f32, __y: f32) f32;
pub extern fn cbrtf(__x: f32) f32;
pub extern fn __cbrtf(__x: f32) f32;
pub extern fn ceilf(__x: f32) f32;
pub extern fn __ceilf(__x: f32) f32;
pub extern fn fabsf(__x: f32) f32;
pub extern fn __fabsf(__x: f32) f32;
pub extern fn floorf(__x: f32) f32;
pub extern fn __floorf(__x: f32) f32;
pub extern fn fmodf(__x: f32, __y: f32) f32;
pub extern fn __fmodf(__x: f32, __y: f32) f32;
pub extern fn isinff(__value: f32) c_int;
pub extern fn finitef(__value: f32) c_int;
pub extern fn dremf(__x: f32, __y: f32) f32;
pub extern fn __dremf(__x: f32, __y: f32) f32;
pub extern fn significandf(__x: f32) f32;
pub extern fn __significandf(__x: f32) f32;
pub extern fn copysignf(__x: f32, __y: f32) f32;
pub extern fn __copysignf(__x: f32, __y: f32) f32;
pub extern fn nanf(__tagb: [*c]const u8) f32;
pub extern fn __nanf(__tagb: [*c]const u8) f32;
pub extern fn isnanf(__value: f32) c_int;
pub extern fn j0f(f32) f32;
pub extern fn __j0f(f32) f32;
pub extern fn j1f(f32) f32;
pub extern fn __j1f(f32) f32;
pub extern fn jnf(c_int, f32) f32;
pub extern fn __jnf(c_int, f32) f32;
pub extern fn y0f(f32) f32;
pub extern fn __y0f(f32) f32;
pub extern fn y1f(f32) f32;
pub extern fn __y1f(f32) f32;
pub extern fn ynf(c_int, f32) f32;
pub extern fn __ynf(c_int, f32) f32;
pub extern fn erff(f32) f32;
pub extern fn __erff(f32) f32;
pub extern fn erfcf(f32) f32;
pub extern fn __erfcf(f32) f32;
pub extern fn lgammaf(f32) f32;
pub extern fn __lgammaf(f32) f32;
pub extern fn tgammaf(f32) f32;
pub extern fn __tgammaf(f32) f32;
pub extern fn gammaf(f32) f32;
pub extern fn __gammaf(f32) f32;
pub extern fn lgammaf_r(f32, __signgamp: [*c]c_int) f32;
pub extern fn __lgammaf_r(f32, __signgamp: [*c]c_int) f32;
pub extern fn rintf(__x: f32) f32;
pub extern fn __rintf(__x: f32) f32;
pub extern fn nextafterf(__x: f32, __y: f32) f32;
pub extern fn __nextafterf(__x: f32, __y: f32) f32;
pub extern fn nexttowardf(__x: f32, __y: c_longdouble) f32;
pub extern fn __nexttowardf(__x: f32, __y: c_longdouble) f32;
pub extern fn remainderf(__x: f32, __y: f32) f32;
pub extern fn __remainderf(__x: f32, __y: f32) f32;
pub extern fn scalbnf(__x: f32, __n: c_int) f32;
pub extern fn __scalbnf(__x: f32, __n: c_int) f32;
pub extern fn ilogbf(__x: f32) c_int;
pub extern fn __ilogbf(__x: f32) c_int;
pub extern fn scalblnf(__x: f32, __n: c_long) f32;
pub extern fn __scalblnf(__x: f32, __n: c_long) f32;
pub extern fn nearbyintf(__x: f32) f32;
pub extern fn __nearbyintf(__x: f32) f32;
pub extern fn roundf(__x: f32) f32;
pub extern fn __roundf(__x: f32) f32;
pub extern fn truncf(__x: f32) f32;
pub extern fn __truncf(__x: f32) f32;
pub extern fn remquof(__x: f32, __y: f32, __quo: [*c]c_int) f32;
pub extern fn __remquof(__x: f32, __y: f32, __quo: [*c]c_int) f32;
pub extern fn lrintf(__x: f32) c_long;
pub extern fn __lrintf(__x: f32) c_long;
pub extern fn llrintf(__x: f32) c_longlong;
pub extern fn __llrintf(__x: f32) c_longlong;
pub extern fn lroundf(__x: f32) c_long;
pub extern fn __lroundf(__x: f32) c_long;
pub extern fn llroundf(__x: f32) c_longlong;
pub extern fn __llroundf(__x: f32) c_longlong;
pub extern fn fdimf(__x: f32, __y: f32) f32;
pub extern fn __fdimf(__x: f32, __y: f32) f32;
pub extern fn fmaxf(__x: f32, __y: f32) f32;
pub extern fn __fmaxf(__x: f32, __y: f32) f32;
pub extern fn fminf(__x: f32, __y: f32) f32;
pub extern fn __fminf(__x: f32, __y: f32) f32;
pub extern fn fmaf(__x: f32, __y: f32, __z: f32) f32;
pub extern fn __fmaf(__x: f32, __y: f32, __z: f32) f32;
pub extern fn scalbf(__x: f32, __n: f32) f32;
pub extern fn __scalbf(__x: f32, __n: f32) f32;
pub extern fn __fpclassifyl(__value: c_longdouble) c_int;
pub extern fn __signbitl(__value: c_longdouble) c_int;
pub extern fn __isinfl(__value: c_longdouble) c_int;
pub extern fn __finitel(__value: c_longdouble) c_int;
pub extern fn __isnanl(__value: c_longdouble) c_int;
pub extern fn __iseqsigl(__x: c_longdouble, __y: c_longdouble) c_int;
pub extern fn __issignalingl(__value: c_longdouble) c_int;
pub extern fn acosl(__x: c_longdouble) c_longdouble;
pub extern fn __acosl(__x: c_longdouble) c_longdouble;
pub extern fn asinl(__x: c_longdouble) c_longdouble;
pub extern fn __asinl(__x: c_longdouble) c_longdouble;
pub extern fn atanl(__x: c_longdouble) c_longdouble;
pub extern fn __atanl(__x: c_longdouble) c_longdouble;
pub extern fn atan2l(__y: c_longdouble, __x: c_longdouble) c_longdouble;
pub extern fn __atan2l(__y: c_longdouble, __x: c_longdouble) c_longdouble;
pub extern fn cosl(__x: c_longdouble) c_longdouble;
pub extern fn __cosl(__x: c_longdouble) c_longdouble;
pub extern fn sinl(__x: c_longdouble) c_longdouble;
pub extern fn __sinl(__x: c_longdouble) c_longdouble;
pub extern fn tanl(__x: c_longdouble) c_longdouble;
pub extern fn __tanl(__x: c_longdouble) c_longdouble;
pub extern fn coshl(__x: c_longdouble) c_longdouble;
pub extern fn __coshl(__x: c_longdouble) c_longdouble;
pub extern fn sinhl(__x: c_longdouble) c_longdouble;
pub extern fn __sinhl(__x: c_longdouble) c_longdouble;
pub extern fn tanhl(__x: c_longdouble) c_longdouble;
pub extern fn __tanhl(__x: c_longdouble) c_longdouble;
pub extern fn acoshl(__x: c_longdouble) c_longdouble;
pub extern fn __acoshl(__x: c_longdouble) c_longdouble;
pub extern fn asinhl(__x: c_longdouble) c_longdouble;
pub extern fn __asinhl(__x: c_longdouble) c_longdouble;
pub extern fn atanhl(__x: c_longdouble) c_longdouble;
pub extern fn __atanhl(__x: c_longdouble) c_longdouble;
pub extern fn expl(__x: c_longdouble) c_longdouble;
pub extern fn __expl(__x: c_longdouble) c_longdouble;
pub extern fn frexpl(__x: c_longdouble, __exponent: [*c]c_int) c_longdouble;
pub extern fn __frexpl(__x: c_longdouble, __exponent: [*c]c_int) c_longdouble;
pub extern fn ldexpl(__x: c_longdouble, __exponent: c_int) c_longdouble;
pub extern fn __ldexpl(__x: c_longdouble, __exponent: c_int) c_longdouble;
pub extern fn logl(__x: c_longdouble) c_longdouble;
pub extern fn __logl(__x: c_longdouble) c_longdouble;
pub extern fn log10l(__x: c_longdouble) c_longdouble;
pub extern fn __log10l(__x: c_longdouble) c_longdouble;
pub extern fn modfl(__x: c_longdouble, __iptr: [*c]c_longdouble) c_longdouble;
pub extern fn __modfl(__x: c_longdouble, __iptr: [*c]c_longdouble) c_longdouble;
pub extern fn expm1l(__x: c_longdouble) c_longdouble;
pub extern fn __expm1l(__x: c_longdouble) c_longdouble;
pub extern fn log1pl(__x: c_longdouble) c_longdouble;
pub extern fn __log1pl(__x: c_longdouble) c_longdouble;
pub extern fn logbl(__x: c_longdouble) c_longdouble;
pub extern fn __logbl(__x: c_longdouble) c_longdouble;
pub extern fn exp2l(__x: c_longdouble) c_longdouble;
pub extern fn __exp2l(__x: c_longdouble) c_longdouble;
pub extern fn log2l(__x: c_longdouble) c_longdouble;
pub extern fn __log2l(__x: c_longdouble) c_longdouble;
pub extern fn powl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __powl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn sqrtl(__x: c_longdouble) c_longdouble;
pub extern fn __sqrtl(__x: c_longdouble) c_longdouble;
pub extern fn hypotl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __hypotl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn cbrtl(__x: c_longdouble) c_longdouble;
pub extern fn __cbrtl(__x: c_longdouble) c_longdouble;
pub extern fn ceill(__x: c_longdouble) c_longdouble;
pub extern fn __ceill(__x: c_longdouble) c_longdouble;
pub extern fn fabsl(__x: c_longdouble) c_longdouble;
pub extern fn __fabsl(__x: c_longdouble) c_longdouble;
pub extern fn floorl(__x: c_longdouble) c_longdouble;
pub extern fn __floorl(__x: c_longdouble) c_longdouble;
pub extern fn fmodl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fmodl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn isinfl(__value: c_longdouble) c_int;
pub extern fn finitel(__value: c_longdouble) c_int;
pub extern fn dreml(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __dreml(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn significandl(__x: c_longdouble) c_longdouble;
pub extern fn __significandl(__x: c_longdouble) c_longdouble;
pub extern fn copysignl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __copysignl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn nanl(__tagb: [*c]const u8) c_longdouble;
pub extern fn __nanl(__tagb: [*c]const u8) c_longdouble;
pub extern fn isnanl(__value: c_longdouble) c_int;
pub extern fn j0l(c_longdouble) c_longdouble;
pub extern fn __j0l(c_longdouble) c_longdouble;
pub extern fn j1l(c_longdouble) c_longdouble;
pub extern fn __j1l(c_longdouble) c_longdouble;
pub extern fn jnl(c_int, c_longdouble) c_longdouble;
pub extern fn __jnl(c_int, c_longdouble) c_longdouble;
pub extern fn y0l(c_longdouble) c_longdouble;
pub extern fn __y0l(c_longdouble) c_longdouble;
pub extern fn y1l(c_longdouble) c_longdouble;
pub extern fn __y1l(c_longdouble) c_longdouble;
pub extern fn ynl(c_int, c_longdouble) c_longdouble;
pub extern fn __ynl(c_int, c_longdouble) c_longdouble;
pub extern fn erfl(c_longdouble) c_longdouble;
pub extern fn __erfl(c_longdouble) c_longdouble;
pub extern fn erfcl(c_longdouble) c_longdouble;
pub extern fn __erfcl(c_longdouble) c_longdouble;
pub extern fn lgammal(c_longdouble) c_longdouble;
pub extern fn __lgammal(c_longdouble) c_longdouble;
pub extern fn tgammal(c_longdouble) c_longdouble;
pub extern fn __tgammal(c_longdouble) c_longdouble;
pub extern fn gammal(c_longdouble) c_longdouble;
pub extern fn __gammal(c_longdouble) c_longdouble;
pub extern fn lgammal_r(c_longdouble, __signgamp: [*c]c_int) c_longdouble;
pub extern fn __lgammal_r(c_longdouble, __signgamp: [*c]c_int) c_longdouble;
pub extern fn rintl(__x: c_longdouble) c_longdouble;
pub extern fn __rintl(__x: c_longdouble) c_longdouble;
pub extern fn nextafterl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __nextafterl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn nexttowardl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __nexttowardl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn remainderl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __remainderl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn scalbnl(__x: c_longdouble, __n: c_int) c_longdouble;
pub extern fn __scalbnl(__x: c_longdouble, __n: c_int) c_longdouble;
pub extern fn ilogbl(__x: c_longdouble) c_int;
pub extern fn __ilogbl(__x: c_longdouble) c_int;
pub extern fn scalblnl(__x: c_longdouble, __n: c_long) c_longdouble;
pub extern fn __scalblnl(__x: c_longdouble, __n: c_long) c_longdouble;
pub extern fn nearbyintl(__x: c_longdouble) c_longdouble;
pub extern fn __nearbyintl(__x: c_longdouble) c_longdouble;
pub extern fn roundl(__x: c_longdouble) c_longdouble;
pub extern fn __roundl(__x: c_longdouble) c_longdouble;
pub extern fn truncl(__x: c_longdouble) c_longdouble;
pub extern fn __truncl(__x: c_longdouble) c_longdouble;
pub extern fn remquol(__x: c_longdouble, __y: c_longdouble, __quo: [*c]c_int) c_longdouble;
pub extern fn __remquol(__x: c_longdouble, __y: c_longdouble, __quo: [*c]c_int) c_longdouble;
pub extern fn lrintl(__x: c_longdouble) c_long;
pub extern fn __lrintl(__x: c_longdouble) c_long;
pub extern fn llrintl(__x: c_longdouble) c_longlong;
pub extern fn __llrintl(__x: c_longdouble) c_longlong;
pub extern fn lroundl(__x: c_longdouble) c_long;
pub extern fn __lroundl(__x: c_longdouble) c_long;
pub extern fn llroundl(__x: c_longdouble) c_longlong;
pub extern fn __llroundl(__x: c_longdouble) c_longlong;
pub extern fn fdiml(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fdiml(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fmaxl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fmaxl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fminl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fminl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fmal(__x: c_longdouble, __y: c_longdouble, __z: c_longdouble) c_longdouble;
pub extern fn __fmal(__x: c_longdouble, __y: c_longdouble, __z: c_longdouble) c_longdouble;
pub extern fn scalbl(__x: c_longdouble, __n: c_longdouble) c_longdouble;
pub extern fn __scalbl(__x: c_longdouble, __n: c_longdouble) c_longdouble;
pub extern var signgam: c_int;
pub const FP_NAN: c_int = 0;
pub const FP_INFINITE: c_int = 1;
pub const FP_ZERO: c_int = 2;
pub const FP_SUBNORMAL: c_int = 3;
pub const FP_NORMAL: c_int = 4;
const enum_unnamed_4 = c_uint;
pub extern fn memcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
pub extern fn memmove(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
pub extern fn memccpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
pub extern fn memset(__s: ?*anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
pub extern fn memcmp(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: c_ulong) c_int;
pub extern fn __memcmpeq(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: usize) c_int;
pub extern fn memchr(__s: ?*const anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
pub extern fn strcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn strncpy(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strcat(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn strncat(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strncmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;
pub extern fn strcoll(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strxfrm(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) c_ulong;
pub const struct___locale_data_5 = opaque {};
pub const struct___locale_struct = extern struct {
    __locales: [13]?*struct___locale_data_5 = @import("std").mem.zeroes([13]?*struct___locale_data_5),
    __ctype_b: [*c]const c_ushort = @import("std").mem.zeroes([*c]const c_ushort),
    __ctype_tolower: [*c]const c_int = @import("std").mem.zeroes([*c]const c_int),
    __ctype_toupper: [*c]const c_int = @import("std").mem.zeroes([*c]const c_int),
    __names: [13][*c]const u8 = @import("std").mem.zeroes([13][*c]const u8),
};
pub const __locale_t = [*c]struct___locale_struct;
pub const locale_t = __locale_t;
pub extern fn strcoll_l(__s1: [*c]const u8, __s2: [*c]const u8, __l: locale_t) c_int;
pub extern fn strxfrm_l(__dest: [*c]u8, __src: [*c]const u8, __n: usize, __l: locale_t) usize;
pub extern fn strdup(__s: [*c]const u8) [*c]u8;
pub extern fn strndup(__string: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strchr(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn strrchr(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn strcspn(__s: [*c]const u8, __reject: [*c]const u8) c_ulong;
pub extern fn strspn(__s: [*c]const u8, __accept: [*c]const u8) c_ulong;
pub extern fn strpbrk(__s: [*c]const u8, __accept: [*c]const u8) [*c]u8;
pub extern fn strstr(__haystack: [*c]const u8, __needle: [*c]const u8) [*c]u8;
pub extern fn strtok(__s: [*c]u8, __delim: [*c]const u8) [*c]u8;
pub extern fn __strtok_r(noalias __s: [*c]u8, noalias __delim: [*c]const u8, noalias __save_ptr: [*c][*c]u8) [*c]u8;
pub extern fn strtok_r(noalias __s: [*c]u8, noalias __delim: [*c]const u8, noalias __save_ptr: [*c][*c]u8) [*c]u8;
pub extern fn strlen(__s: [*c]const u8) c_ulong;
pub extern fn strnlen(__string: [*c]const u8, __maxlen: usize) usize;
pub extern fn strerror(__errnum: c_int) [*c]u8;
pub extern fn strerror_r(__errnum: c_int, __buf: [*c]u8, __buflen: usize) c_int;
pub extern fn strerror_l(__errnum: c_int, __l: locale_t) [*c]u8;
pub extern fn bcmp(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: c_ulong) c_int;
pub extern fn bcopy(__src: ?*const anyopaque, __dest: ?*anyopaque, __n: c_ulong) void;
pub extern fn bzero(__s: ?*anyopaque, __n: c_ulong) void;
pub extern fn index(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn rindex(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn ffs(__i: c_int) c_int;
pub extern fn ffsl(__l: c_long) c_int;
pub extern fn ffsll(__ll: c_longlong) c_int;
pub extern fn strcasecmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strncasecmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;
pub extern fn strcasecmp_l(__s1: [*c]const u8, __s2: [*c]const u8, __loc: locale_t) c_int;
pub extern fn strncasecmp_l(__s1: [*c]const u8, __s2: [*c]const u8, __n: usize, __loc: locale_t) c_int;
pub extern fn explicit_bzero(__s: ?*anyopaque, __n: usize) void;
pub extern fn strsep(noalias __stringp: [*c][*c]u8, noalias __delim: [*c]const u8) [*c]u8;
pub extern fn strsignal(__sig: c_int) [*c]u8;
pub extern fn __stpcpy(noalias __dest: [*c]u8, noalias __src: [*c]const u8) [*c]u8;
pub extern fn stpcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn __stpncpy(noalias __dest: [*c]u8, noalias __src: [*c]const u8, __n: usize) [*c]u8;
pub extern fn stpncpy(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn __assert_fail(__assertion: [*c]const u8, __file: [*c]const u8, __line: c_uint, __function: [*c]const u8) noreturn;
pub extern fn __assert_perror_fail(__errnum: c_int, __file: [*c]const u8, __line: c_uint, __function: [*c]const u8) noreturn;
pub extern fn __assert(__assertion: [*c]const u8, __file: [*c]const u8, __line: c_int) noreturn;
pub const struct_tm = extern struct {
    tm_sec: c_int = @import("std").mem.zeroes(c_int),
    tm_min: c_int = @import("std").mem.zeroes(c_int),
    tm_hour: c_int = @import("std").mem.zeroes(c_int),
    tm_mday: c_int = @import("std").mem.zeroes(c_int),
    tm_mon: c_int = @import("std").mem.zeroes(c_int),
    tm_year: c_int = @import("std").mem.zeroes(c_int),
    tm_wday: c_int = @import("std").mem.zeroes(c_int),
    tm_yday: c_int = @import("std").mem.zeroes(c_int),
    tm_isdst: c_int = @import("std").mem.zeroes(c_int),
    tm_gmtoff: c_long = @import("std").mem.zeroes(c_long),
    tm_zone: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};
pub const struct_itimerspec = extern struct {
    it_interval: struct_timespec = @import("std").mem.zeroes(struct_timespec),
    it_value: struct_timespec = @import("std").mem.zeroes(struct_timespec),
};
pub const struct_sigevent = opaque {};
pub extern fn clock() clock_t;
pub extern fn time(__timer: [*c]time_t) time_t;
pub extern fn difftime(__time1: time_t, __time0: time_t) f64;
pub extern fn mktime(__tp: [*c]struct_tm) time_t;
pub extern fn strftime(noalias __s: [*c]u8, __maxsize: usize, noalias __format: [*c]const u8, noalias __tp: [*c]const struct_tm) usize;
pub extern fn strftime_l(noalias __s: [*c]u8, __maxsize: usize, noalias __format: [*c]const u8, noalias __tp: [*c]const struct_tm, __loc: locale_t) usize;
pub extern fn gmtime(__timer: [*c]const time_t) [*c]struct_tm;
pub extern fn localtime(__timer: [*c]const time_t) [*c]struct_tm;
pub extern fn gmtime_r(noalias __timer: [*c]const time_t, noalias __tp: [*c]struct_tm) [*c]struct_tm;
pub extern fn localtime_r(noalias __timer: [*c]const time_t, noalias __tp: [*c]struct_tm) [*c]struct_tm;
pub extern fn asctime(__tp: [*c]const struct_tm) [*c]u8;
pub extern fn ctime(__timer: [*c]const time_t) [*c]u8;
pub extern fn asctime_r(noalias __tp: [*c]const struct_tm, noalias __buf: [*c]u8) [*c]u8;
pub extern fn ctime_r(noalias __timer: [*c]const time_t, noalias __buf: [*c]u8) [*c]u8;
pub extern var __tzname: [2][*c]u8;
pub extern var __daylight: c_int;
pub extern var __timezone: c_long;
pub extern var tzname: [2][*c]u8;
pub extern fn tzset() void;
pub extern var daylight: c_int;
pub extern var timezone: c_long;
pub extern fn timegm(__tp: [*c]struct_tm) time_t;
pub extern fn timelocal(__tp: [*c]struct_tm) time_t;
pub extern fn dysize(__year: c_int) c_int;
pub extern fn nanosleep(__requested_time: [*c]const struct_timespec, __remaining: [*c]struct_timespec) c_int;
pub extern fn clock_getres(__clock_id: clockid_t, __res: [*c]struct_timespec) c_int;
pub extern fn clock_gettime(__clock_id: clockid_t, __tp: [*c]struct_timespec) c_int;
pub extern fn clock_settime(__clock_id: clockid_t, __tp: [*c]const struct_timespec) c_int;
pub extern fn clock_nanosleep(__clock_id: clockid_t, __flags: c_int, __req: [*c]const struct_timespec, __rem: [*c]struct_timespec) c_int;
pub extern fn clock_getcpuclockid(__pid: pid_t, __clock_id: [*c]clockid_t) c_int;
pub extern fn timer_create(__clock_id: clockid_t, noalias __evp: ?*struct_sigevent, noalias __timerid: [*c]timer_t) c_int;
pub extern fn timer_delete(__timerid: timer_t) c_int;
pub extern fn timer_settime(__timerid: timer_t, __flags: c_int, noalias __value: [*c]const struct_itimerspec, noalias __ovalue: [*c]struct_itimerspec) c_int;
pub extern fn timer_gettime(__timerid: timer_t, __value: [*c]struct_itimerspec) c_int;
pub extern fn timer_getoverrun(__timerid: timer_t) c_int;
pub extern fn timespec_get(__ts: [*c]struct_timespec, __base: c_int) c_int;
pub const ptrdiff_t = c_long;
pub const max_align_t = extern struct {
    __clang_max_align_nonce1: c_longlong align(8) = @import("std").mem.zeroes(c_longlong),
    __clang_max_align_nonce2: c_longdouble align(16) = @import("std").mem.zeroes(c_longdouble),
};
pub extern var linenoiseEditMore: [*c]u8;
pub const struct_linenoiseState = extern struct {
    in_completion: c_int = @import("std").mem.zeroes(c_int),
    completion_idx: usize = @import("std").mem.zeroes(usize),
    ifd: c_int = @import("std").mem.zeroes(c_int),
    ofd: c_int = @import("std").mem.zeroes(c_int),
    buf: [*c]u8 = @import("std").mem.zeroes([*c]u8),
    buflen: usize = @import("std").mem.zeroes(usize),
    prompt: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    plen: usize = @import("std").mem.zeroes(usize),
    pos: usize = @import("std").mem.zeroes(usize),
    oldpos: usize = @import("std").mem.zeroes(usize),
    len: usize = @import("std").mem.zeroes(usize),
    cols: usize = @import("std").mem.zeroes(usize),
    oldrows: usize = @import("std").mem.zeroes(usize),
    history_index: c_int = @import("std").mem.zeroes(c_int),
};
pub const struct_linenoiseCompletions = extern struct {
    len: usize = @import("std").mem.zeroes(usize),
    cvec: [*c][*c]u8 = @import("std").mem.zeroes([*c][*c]u8),
};
pub const linenoiseCompletions = struct_linenoiseCompletions;
pub extern fn linenoiseEditStart(l: [*c]struct_linenoiseState, stdin_fd: c_int, stdout_fd: c_int, buf: [*c]u8, buflen: usize, prompt: [*c]const u8) c_int;
pub extern fn linenoiseEditFeed(l: [*c]struct_linenoiseState) [*c]u8;
pub extern fn linenoiseEditStop(l: [*c]struct_linenoiseState) void;
pub extern fn linenoiseHide(l: [*c]struct_linenoiseState) void;
pub extern fn linenoiseShow(l: [*c]struct_linenoiseState) void;
pub extern fn linenoise(prompt: [*c]const u8) [*c]u8;
pub extern fn linenoiseFree(ptr: ?*anyopaque) void;
pub const linenoiseCompletionCallback = fn ([*c]const u8, [*c]linenoiseCompletions) callconv(.c) void;
pub const linenoiseHintsCallback = fn ([*c]const u8, [*c]c_int, [*c]c_int) callconv(.c) [*c]u8;
pub const linenoiseFreeHintsCallback = fn (?*anyopaque) callconv(.c) void;
pub extern fn linenoiseSetCompletionCallback(?*const linenoiseCompletionCallback) void;
pub extern fn linenoiseSetHintsCallback(?*const linenoiseHintsCallback) void;
pub extern fn linenoiseSetFreeHintsCallback(?*const linenoiseFreeHintsCallback) void;
pub extern fn linenoiseAddCompletion([*c]linenoiseCompletions, [*c]const u8) void;
pub extern fn linenoiseHistoryAdd(line: [*c]const u8) c_int;
pub extern fn linenoiseHistorySetMaxLen(len: c_int) c_int;
pub extern fn linenoiseHistorySave(filename: [*c]const u8) c_int;
pub extern fn linenoiseHistoryLoad(filename: [*c]const u8) c_int;
pub extern fn linenoiseClearScreen() void;
pub extern fn linenoiseSetMultiLine(ml: c_int) void;
pub extern fn linenoisePrintKeyCodes() void;
pub extern fn linenoiseMaskModeEnable() void;
pub extern fn linenoiseMaskModeDisable() void;
pub const ZZERO: c_int = 0;
pub const SYMBOL: c_int = 2;
pub const CODE: c_int = 4;
pub const NUMBER: c_int = 6;
pub const STREAM: c_int = 8;
pub const CHARACTER: c_int = 10;
pub const FLOAT: c_int = 12;
pub const ARRAY: c_int = 14;
pub const STRING: c_int = 16;
pub const PAIR: c_int = 18;
pub const enum_type = c_uint;
pub const UNUSED: c_int = 0;
pub const BRA: c_int = 1;
pub const KET: c_int = 2;
pub const QUO: c_int = 3;
pub const DOT: c_int = 4;
pub const enum_token = c_uint;
pub const OTHER_FORMS: c_int = 0;
pub const TAIL_FORMS: c_int = 1;
pub const FUNCTIONS: c_int = 2;
pub const SPECIAL_FORMS: c_int = 3;
pub const enum_fntypes_t = c_uint;
pub const symbol_t = usize;
pub const builtin_t = usize;
pub const chars_t = usize;
const struct_unnamed_7 = extern struct {
    car: [*c]struct_sobject = @import("std").mem.zeroes([*c]struct_sobject),
    cdr: [*c]struct_sobject = @import("std").mem.zeroes([*c]struct_sobject),
};
const union_unnamed_9 = extern union {
    name: symbol_t,
    integer: c_int,
    chars: chars_t,
    single_float: f32,
};
const struct_unnamed_8 = extern struct {
    type: c_uint = @import("std").mem.zeroes(c_uint),
    unnamed_0: union_unnamed_9 = @import("std").mem.zeroes(union_unnamed_9),
};
const union_unnamed_6 = extern union {
    unnamed_0: struct_unnamed_7,
    unnamed_1: struct_unnamed_8,
};
pub const struct_sobject = extern struct {
    unnamed_0: union_unnamed_6 = @import("std").mem.zeroes(union_unnamed_6),
};
pub const object = struct_sobject;
pub const fn_ptr_type = ?*const fn ([*c]object, [*c]object) callconv(.c) [*c]object;
pub const mapfun_t = ?*const fn ([*c]object, [*c][*c]object) callconv(.c) void;
pub const tbl_entry_t = extern struct {
    string: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    fptr: fn_ptr_type = @import("std").mem.zeroes(fn_ptr_type),
    minmax: u8 = @import("std").mem.zeroes(u8),
    doc: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
};
pub const nstream_t = u8;
pub const gfun_t = ?*const fn (...) callconv(.c) c_int;
pub const pfun_t = ?*const fn (u8) callconv(.c) void;
pub const pstream_ptr_t = ?*const fn (u8) callconv(.c) pfun_t;
pub const gstream_ptr_t = ?*const fn (u8) callconv(.c) gfun_t;
pub const stream_entry_t = extern struct {
    streamname: [*c]const u8 = @import("std").mem.zeroes([*c]const u8),
    pfunptr: pstream_ptr_t = @import("std").mem.zeroes(pstream_ptr_t),
    gfunptr: gstream_ptr_t = @import("std").mem.zeroes(gstream_ptr_t),
};
pub const NIL: c_int = 0;
pub const TEE: c_int = 1;
pub const NOTHING: c_int = 2;
pub const OPTIONAL: c_int = 3;
pub const FEATURES: c_int = 4;
pub const INITIALELEMENT: c_int = 5;
pub const ELEMENTTYPE: c_int = 6;
pub const TEST: c_int = 7;
pub const COLONA: c_int = 8;
pub const COLONB: c_int = 9;
pub const COLONC: c_int = 10;
pub const BIT: c_int = 11;
pub const AMPREST: c_int = 12;
pub const LAMBDA: c_int = 13;
pub const LET: c_int = 14;
pub const LETSTAR: c_int = 15;
pub const CLOSURE: c_int = 16;
pub const PSTAR: c_int = 17;
pub const QUOTE: c_int = 18;
pub const DEFUN: c_int = 19;
pub const DEFVAR: c_int = 20;
pub const EQ: c_int = 21;
pub const CAR: c_int = 22;
pub const FIRST: c_int = 23;
pub const CDR: c_int = 24;
pub const REST: c_int = 25;
pub const NTH: c_int = 26;
pub const AREF: c_int = 27;
pub const CHAR: c_int = 28;
pub const STRINGFN: c_int = 29;
pub const PINMODE: c_int = 30;
pub const DIGITALWRITE: c_int = 31;
pub const ANALOGREAD: c_int = 32;
pub const REGISTER: c_int = 33;
pub const FORMAT: c_int = 34;
pub const enum_builtin_t = c_uint;
pub export var Workspace: [65536]object align(4) = @import("std").mem.zeroes([65536]object);
pub export var toplevel_handler: jmp_buf = @import("std").mem.zeroes(jmp_buf);
pub export var handler: [*c]jmp_buf = &toplevel_handler;
pub export var Freespace: c_uint = 0;
pub export var Freelist: [*c]object = @import("std").mem.zeroes([*c]object);
pub export var I2Ccount: c_uint = @import("std").mem.zeroes(c_uint);
pub export var TraceFn: [3]c_uint = @import("std").mem.zeroes([3]c_uint);
pub export var TraceDepth: [3]c_uint = @import("std").mem.zeroes([3]c_uint);
pub export var Context: builtin_t = @import("std").mem.zeroes(builtin_t);
pub export var TraceStart: u8 = 0;
pub export var TraceTop: u8 = 0;
pub export var Backtrace: [8]symbol_t = @import("std").mem.zeroes([8]symbol_t);
pub export var GlobalEnv: [*c]object = @import("std").mem.zeroes([*c]object);
pub export var GCStack: [*c]object = null;
pub export var GlobalString: [*c]object = @import("std").mem.zeroes([*c]object);
pub export var GlobalStringTail: [*c]object = @import("std").mem.zeroes([*c]object);
pub export var GlobalStringIndex: c_int = 0;
pub export var PrintCount: u8 = 0;
pub export var BreakLevel: u8 = 0;
pub export var LastChar: u8 = 0;
pub export var LastPrint: u8 = 0;
pub export var StackBottom: ?*anyopaque = @import("std").mem.zeroes(?*anyopaque);
pub const PRINTREADABLY: c_int = 0;
pub const RETURNFLAG: c_int = 1;
pub const ESCAPE: c_int = 2;
pub const EXITEDITOR: c_int = 3;
pub const LIBRARYLOADED: c_int = 4;
pub const NOESC: c_int = 5;
pub const NOECHO: c_int = 6;
pub const MUFFLEERRORS: c_int = 7;
pub const BACKTRACE: c_int = 8;
pub const enum_flag = c_uint;
pub const flags_t = u16;
pub export var Flags: flags_t = @as(flags_t, @bitCast(@as(c_short, @truncate(@as(c_int, 1) << @intCast(PRINTREADABLY)))));
pub export var tee: [*c]object = @import("std").mem.zeroes([*c]object);
pub export fn pfstring(arg_s: [*c]const u8, arg_pfun: pfun_t) void {
    var s = arg_s;
    _ = &s;
    var pfun = arg_pfun;
    _ = &pfun;
    while (true) {
        var c: u8 = (blk: {
            const ref = &s;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).*;
        _ = &c;
        if (@as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, 0)) return;
        pfun.?(c);
    }
}
pub export fn tf_progn(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    if (args == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return null;
    var more: [*c]object = args.*.unnamed_0.unnamed_0.cdr;
    _ = &more;
    while (more != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var result: [*c]object = eval(args.*.unnamed_0.unnamed_0.car, env);
        _ = &result;
        if ((@as(c_int, @bitCast(@as(c_uint, Flags))) & (@as(c_int, 1) << @intCast(RETURNFLAG))) != 0) return quote(result);
        args = more;
        more = args.*.unnamed_0.unnamed_0.cdr;
    }
    return args.*.unnamed_0.unnamed_0.car;
}
pub export fn sread(arg_gfun: gfun_t) [*c]object {
    var gfun = arg_gfun;
    _ = &gfun;
    var item: [*c]object = nextitem(gfun);
    _ = &item;
    if (item == @as([*c]object, @ptrFromInt(KET))) {
        error2("incomplete list");
    }
    if (item == @as([*c]object, @ptrFromInt(BRA))) return readrest(gfun);
    if (item == @as([*c]object, @ptrFromInt(DOT))) return sread(gfun);
    if (item == @as([*c]object, @ptrFromInt(QUO))) return cons(bsymbol(@as(builtin_t, @bitCast(@as(c_long, QUOTE)))), cons(sread(gfun), null));
    return item;
}
pub export fn printobject(arg_form: [*c]object, arg_pfun: pfun_t) void {
    var form = arg_form;
    _ = &form;
    var pfun = arg_pfun;
    _ = &pfun;
    if (form == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        pfstring("nil", pfun);
    } else if ((@as(c_int, @intFromBool(listp(form))) != 0) and (isbuiltin(form.*.unnamed_0.unnamed_0.car, @as(builtin_t, @bitCast(@as(c_long, CLOSURE)))) != 0)) {
        pfstring("<closure>", pfun);
    } else if (listp(form)) {
        plist(form, pfun);
    } else if ((form != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (form.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(NUMBER)))) {
        pint(form.*.unnamed_0.unnamed_1.unnamed_0.integer, pfun);
    } else if ((form != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (form.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(FLOAT)))) {
        pfloat(form.*.unnamed_0.unnamed_1.unnamed_0.single_float, pfun);
    } else if ((form != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (form.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(SYMBOL)))) {
        if (form.*.unnamed_0.unnamed_1.unnamed_0.name != sym(@as(builtin_t, @bitCast(@as(c_long, NOTHING))))) {
            printsymbol(form, pfun);
        }
    } else if ((form != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (form.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(CHARACTER)))) {
        pcharacter(@as(u8, @bitCast(@as(u8, @truncate(form.*.unnamed_0.unnamed_1.unnamed_0.chars)))), pfun);
    } else if ((form != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (form.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(STRING)))) {
        printstring(form, pfun);
    } else if ((form != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (form.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(ARRAY)))) {
        printarray(form, pfun);
    } else if ((form != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (form.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(STREAM)))) {
        pstream(form, pfun);
    } else {
        error2("error in print");
    }
}
pub export fn lookupfn(arg_name: builtin_t) isize {
    var name = arg_name;
    _ = &name;
    var n: bool = name < @as(builtin_t, @bitCast(@as(c_ulong, tablesize(@as(c_int, 0)))));
    _ = &n;
    return @as(isize, @intCast(@intFromPtr(table(if (@as(c_int, @intFromBool(n)) != 0) @as(c_int, 0) else @as(c_int, 1))[if (@as(c_int, @intFromBool(n)) != 0) name else name -% @as(builtin_t, @bitCast(@as(c_ulong, tablesize(@as(c_int, 0)))))].fptr)));
}
pub export fn pfl(arg_pfun: pfun_t) void {
    var pfun = arg_pfun;
    _ = &pfun;
    if (@as(c_int, @bitCast(@as(c_uint, LastPrint))) != @as(c_int, '\n')) {
        pfun.?(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '\n'))))));
    }
}
pub export fn pserial(arg_c: u8) void {
    var c = arg_c;
    _ = &c;
    LastPrint = c;
    if (@as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, '\n')) {
        _ = putchar(@as(c_int, '\r'));
    }
    _ = putchar(@as(c_int, @bitCast(@as(c_uint, c))));
}
pub export fn pln(arg_pfun: pfun_t) void {
    var pfun = arg_pfun;
    _ = &pfun;
    pfun.?(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '\n'))))));
}
pub export fn nthchar(arg_string: [*c]object, arg_n: c_int) u8 {
    var string = arg_string;
    _ = &string;
    var n = arg_n;
    _ = &n;
    var shift: c_int = undefined;
    _ = &shift;
    var arg: [*c][*c]object = getcharplace(string, n, &shift);
    _ = &arg;
    if (arg.* == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return 0;
    return @as(u8, @bitCast(@as(u8, @truncate((arg.*.*.unnamed_0.unnamed_1.unnamed_0.chars >> @intCast((-shift - @as(c_int, 2)) << @intCast(3))) & @as(chars_t, @bitCast(@as(c_long, @as(c_int, 255))))))));
}
pub export fn getminmax(arg_name: builtin_t) u8 {
    var name = arg_name;
    _ = &name;
    var n: bool = name < @as(builtin_t, @bitCast(@as(c_ulong, tablesize(@as(c_int, 0)))));
    _ = &n;
    return table(if (@as(c_int, @intFromBool(n)) != 0) @as(c_int, 0) else @as(c_int, 1))[if (@as(c_int, @intFromBool(n)) != 0) name else name -% @as(builtin_t, @bitCast(@as(c_ulong, tablesize(@as(c_int, 0)))))].minmax;
}
pub export fn listlength(arg_list: [*c]object) c_int {
    var list = arg_list;
    _ = &list;
    var length: c_int = 0;
    _ = &length;
    while (list != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        if (!listp(list)) {
            error2(@as([*c]const u8, @ptrCast(@alignCast(&notproper[@as(usize, @intCast(0))]))));
        }
        list = list.*.unnamed_0.unnamed_0.cdr;
        length += 1;
    }
    return length;
}
pub export fn checkminmax(arg_name: builtin_t, arg_nargs: c_int) void {
    var name = arg_name;
    _ = &name;
    var nargs = arg_nargs;
    _ = &nargs;
    if (!(name < @as(builtin_t, @bitCast(@as(c_long, @as(c_int, 198967296)))))) {
        error2("not a builtin");
    }
    var minmax: u8 = getminmax(name);
    _ = &minmax;
    if (nargs < ((@as(c_int, @bitCast(@as(c_uint, minmax))) >> @intCast(3)) & @as(c_int, 7))) {
        error2(@as([*c]const u8, @ptrCast(@alignCast(&toofewargs[@as(usize, @intCast(0))]))));
    }
    if (((@as(c_int, @bitCast(@as(c_uint, minmax))) & @as(c_int, 7)) != @as(c_int, 7)) and (nargs > (@as(c_int, @bitCast(@as(c_uint, minmax))) & @as(c_int, 7)))) {
        error2(@as([*c]const u8, @ptrCast(@alignCast(&toomanyargs[@as(usize, @intCast(0))]))));
    }
}
pub export fn pint(arg_i: c_int, arg_pfun: pfun_t) void {
    var i = arg_i;
    _ = &i;
    var pfun = arg_pfun;
    _ = &pfun;
    var j: u32 = @as(u32, @bitCast(i));
    _ = &j;
    if (i < @as(c_int, 0)) {
        pfun.?(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '-'))))));
        j = @as(u32, @bitCast(-i));
    }
    pintbase(j, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 10))))), pfun);
}
pub export fn gserial() c_int {
    if (LastChar != 0) {
        var temp: u8 = LastChar;
        _ = &temp;
        LastChar = 0;
        return @as(c_int, @bitCast(@as(c_uint, temp)));
    }
    if (input_pos >= input_len) {
        LastChar = 0;
        loop_done = @as(c_int, 1) != 0;
        yield_loop();
        return '\n';
    }
    return @as(c_int, @bitCast(@as(c_uint, (blk: {
        const tmp = blk_1: {
            const ref = &input_pos;
            const tmp_2 = ref.*;
            ref.* += 1;
            break :blk_1 tmp_2;
        };
        if (tmp >= 0) break :blk input_buf + @as(usize, @intCast(tmp)) else break :blk input_buf - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*)));
}
pub export fn pintbase(arg_i: u32, arg_base: u8, arg_pfun: pfun_t) void {
    var i = arg_i;
    _ = &i;
    var base = arg_base;
    _ = &base;
    var pfun = arg_pfun;
    _ = &pfun;
    var lead: c_int = 0;
    _ = &lead;
    var p: u32 = @as(u32, @bitCast(@as(c_int, 1000000000)));
    _ = &p;
    if (@as(c_int, @bitCast(@as(c_uint, base))) == @as(c_int, 2)) {
        p = 2147483648;
    } else if (@as(c_int, @bitCast(@as(c_uint, base))) == @as(c_int, 16)) {
        p = @as(u32, @bitCast(@as(c_int, 268435456)));
    }
    {
        var d: u32 = p;
        _ = &d;
        while (d > @as(u32, @bitCast(@as(c_int, 0)))) : (d = d / @as(u32, @bitCast(@as(c_uint, base)))) {
            var j: u32 = i / d;
            _ = &j;
            if (((j != @as(u32, @bitCast(@as(c_int, 0)))) or (lead != 0)) or (d == @as(u32, @bitCast(@as(c_int, 1))))) {
                pfun.?(@as(u8, @bitCast(@as(u8, @truncate(if (j < @as(u32, @bitCast(@as(c_int, 10)))) j +% @as(u32, @bitCast(@as(c_int, '0'))) else j +% @as(u32, @bitCast(@as(c_int, 'W'))))))));
                lead = 1;
            }
            i = i -% (j *% d);
        }
    }
}
pub export fn subwidthlist(arg_form: [*c]object, arg_w: c_int) c_int {
    var form = arg_form;
    _ = &form;
    var w = arg_w;
    _ = &w;
    while ((form != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (w >= @as(c_int, 0))) {
        if (!consp(form)) return w - (@as(c_int, 2) + @as(c_int, @bitCast(@as(c_uint, atomwidth(form)))));
        w = subwidth(form.*.unnamed_0.unnamed_0.car, w - @as(c_int, 1));
        form = form.*.unnamed_0.unnamed_0.cdr;
    }
    return w;
}
pub export fn prin1object(arg_form: [*c]object, arg_pfun: pfun_t) void {
    var form = arg_form;
    _ = &form;
    var pfun = arg_pfun;
    _ = &pfun;
    var temp: flags_t = Flags;
    _ = &temp;
    _ = blk: {
        const tmp = @as(flags_t, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_uint, Flags))) & ~(@as(c_int, 1) << @intCast(PRINTREADABLY))))));
        Flags = tmp;
        break :blk tmp;
    };
    printobject(form, pfun);
    Flags = temp;
}
pub export fn printstring(arg_form: [*c]object, arg_pfun: pfun_t) void {
    var form = arg_form;
    _ = &form;
    var pfun = arg_pfun;
    _ = &pfun;
    if ((@as(c_int, @bitCast(@as(c_uint, Flags))) & (@as(c_int, 1) << @intCast(PRINTREADABLY))) != 0) {
        pfun.?(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '"'))))));
    }
    plispstr(form.*.unnamed_0.unnamed_1.unnamed_0.name, pfun);
    if ((@as(c_int, @bitCast(@as(c_uint, Flags))) & (@as(c_int, 1) << @intCast(PRINTREADABLY))) != 0) {
        pfun.?(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '"'))))));
    }
}
pub export fn glibrary() c_int {
    if (LastChar != 0) {
        var temp: u8 = LastChar;
        _ = &temp;
        LastChar = 0;
        return @as(c_int, @bitCast(@as(c_uint, temp)));
    }
    var c: u8 = LispLibrary[@as(c_uint, @intCast(blk: {
        const ref = &GlobalStringIndex;
        const tmp = ref.*;
        ref.* += 1;
        break :blk tmp;
    }))];
    _ = &c;
    return if (@as(c_int, @bitCast(@as(c_uint, c))) != @as(c_int, 0)) @as(c_int, @bitCast(@as(c_uint, c))) else -@as(c_int, 1);
}
pub export fn sym(arg_x: builtin_t) symbol_t {
    var x = arg_x;
    _ = &x;
    return @as(builtin_t, @bitCast(@as(c_ulong, @as(u32, @bitCast(@as(c_uint, @truncate((x +% @as(builtin_t, @bitCast(@as(c_ulong, @as(c_uint, 4096000000))))) << @intCast(2)))))))) | (((x +% @as(builtin_t, @bitCast(@as(c_ulong, @as(c_uint, 4096000000))))) & @as(builtin_t, @bitCast(@as(c_ulong, @as(c_uint, 3221225472))))) >> @intCast(30));
}
pub export fn intern(arg_name: symbol_t) [*c]object {
    var name = arg_name;
    _ = &name;
    {
        var i: c_int = 0;
        _ = &i;
        while (i < (@as(c_int, 65536) - @as(c_int, 0))) : (i += 1) {
            var obj: [*c]object = &Workspace[@as(c_uint, @intCast(i))];
            _ = &obj;
            if ((obj.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(SYMBOL))) and (obj.*.unnamed_0.unnamed_1.unnamed_0.name == name)) return obj;
        }
    }
    return symbol(name);
}
pub export fn indent(arg_spaces: u8, arg_ch: u8, arg_pfun: pfun_t) void {
    var spaces = arg_spaces;
    _ = &spaces;
    var ch = arg_ch;
    _ = &ch;
    var pfun = arg_pfun;
    _ = &pfun;
    {
        var i: u8 = 0;
        _ = &i;
        while (@as(c_int, @bitCast(@as(c_uint, i))) < @as(c_int, @bitCast(@as(c_uint, spaces)))) : (i +%= 1) {
            pfun.?(ch);
        }
    }
}
pub export fn psymbol(arg_name: symbol_t, arg_pfun: pfun_t) void {
    var name = arg_name;
    _ = &name;
    var pfun = arg_pfun;
    _ = &pfun;
    if ((name & @as(symbol_t, @bitCast(@as(c_long, @as(c_int, 3))))) == @as(symbol_t, @bitCast(@as(c_long, @as(c_int, 0))))) {
        plispstr(name, pfun);
    } else {
        var value_1: u32 = @as(u32, @bitCast(@as(c_uint, @truncate(((name >> @intCast(2)) & @as(symbol_t, @bitCast(@as(c_long, @as(c_int, 1073741823))))) | ((name & @as(symbol_t, @bitCast(@as(c_long, @as(c_int, 3))))) << @intCast(30))))));
        _ = &value_1;
        if (value_1 < @as(u32, @bitCast(@as(c_int, 1126400000)))) {
            error2("invalid symbol");
        } else if (value_1 >= @as(c_uint, 4096000000)) {
            pbuiltin(@as(builtin_t, @bitCast(@as(c_ulong, value_1 -% @as(c_uint, 4096000000)))), pfun);
        } else {
            pradix40(name, pfun);
        }
    }
}
pub export fn lispstring(arg_s: [*c]u8) [*c]object {
    var s = arg_s;
    _ = &s;
    var obj: [*c]object = newstring();
    _ = &obj;
    var tail: [*c]object = obj;
    _ = &tail;
    while (true) {
        var ch: u8 = (blk: {
            const ref = &s;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).*;
        _ = &ch;
        if (@as(c_int, @bitCast(@as(c_uint, ch))) == @as(c_int, 0)) break;
        if (@as(c_int, @bitCast(@as(c_uint, ch))) == @as(c_int, '\\')) {
            ch = (blk: {
                const ref = &s;
                const tmp = ref.*;
                ref.* += 1;
                break :blk tmp;
            }).*;
        }
        buildstring(ch, &tail);
    }
    return obj;
}
pub export fn keywordp(arg_obj: [*c]object) bool {
    var obj = arg_obj;
    _ = &obj;
    if (!(((obj != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (obj.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(SYMBOL)))) and (@as(c_int, @intFromBool(builtinp(obj.*.unnamed_0.unnamed_1.unnamed_0.name))) != 0))) return @as(c_int, 0) != 0;
    var name: builtin_t = builtin(obj.*.unnamed_0.unnamed_1.unnamed_0.name);
    _ = &name;
    var n: bool = name < @as(builtin_t, @bitCast(@as(c_ulong, tablesize(@as(c_int, 0)))));
    _ = &n;
    var s: [*c]const u8 = table(if (@as(c_int, @intFromBool(n)) != 0) @as(c_int, 0) else @as(c_int, 1))[if (@as(c_int, @intFromBool(n)) != 0) name else name -% @as(builtin_t, @bitCast(@as(c_ulong, tablesize(@as(c_int, 0)))))].string;
    _ = &s;
    var c: u8 = s[@as(c_uint, @intCast(@as(c_int, 0)))];
    _ = &c;
    return @as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, ':');
}
pub export fn stringcompare(arg_args: [*c]object, arg_lt: bool, arg_gt: bool, arg_eq_1: bool) c_int {
    var args = arg_args;
    _ = &args;
    var lt = arg_lt;
    _ = &lt;
    var gt = arg_gt;
    _ = &gt;
    var eq_1 = arg_eq_1;
    _ = &eq_1;
    var arg1: [*c]object = checkstring(args.*.unnamed_0.unnamed_0.car);
    _ = &arg1;
    var arg2: [*c]object = checkstring(@as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car);
    _ = &arg2;
    arg1 = arg1.*.unnamed_0.unnamed_0.cdr;
    arg2 = arg2.*.unnamed_0.unnamed_0.cdr;
    var m: c_int = 0;
    _ = &m;
    var a: chars_t = 0;
    _ = &a;
    var b: chars_t = 0;
    _ = &b;
    while ((arg1 != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) or (arg2 != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))))) {
        if (arg1 == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return if (@as(c_int, @intFromBool(lt)) != 0) m else -@as(c_int, 1);
        if (arg2 == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return if (@as(c_int, @intFromBool(gt)) != 0) m else -@as(c_int, 1);
        a = arg1.*.unnamed_0.unnamed_1.unnamed_0.chars;
        b = arg2.*.unnamed_0.unnamed_1.unnamed_0.chars;
        if (a < b) {
            if (lt) {
                m = @as(c_int, @bitCast(@as(c_uint, @truncate(@as(c_ulong, @bitCast(@as(c_long, m))) +% @sizeOf(c_int)))));
                while (a != b) {
                    m -= 1;
                    a = a >> @intCast(8);
                    b = b >> @intCast(8);
                }
                return m;
            } else return -@as(c_int, 1);
        }
        if (a > b) {
            if (gt) {
                m = @as(c_int, @bitCast(@as(c_uint, @truncate(@as(c_ulong, @bitCast(@as(c_long, m))) +% @sizeOf(c_int)))));
                while (a != b) {
                    m -= 1;
                    a = a >> @intCast(8);
                    b = b >> @intCast(8);
                }
                return m;
            } else return -@as(c_int, 1);
        }
        arg1 = arg1.*.unnamed_0.unnamed_0.car;
        arg2 = arg2.*.unnamed_0.unnamed_0.car;
        m = @as(c_int, @bitCast(@as(c_uint, @truncate(@as(c_ulong, @bitCast(@as(c_long, m))) +% @sizeOf(c_int)))));
    }
    if (eq_1) {
        m = @as(c_int, @bitCast(@as(c_uint, @truncate(@as(c_ulong, @bitCast(@as(c_long, m))) -% @sizeOf(c_int)))));
        while (a != @as(chars_t, @bitCast(@as(c_long, @as(c_int, 0))))) {
            m += 1;
            a = a << @intCast(8);
        }
        return m;
    } else return -@as(c_int, 1);
    return 0;
}
// src/ulisp.c:7676:3: warning: TODO implement translation of stmt class LabelStmtClass

// src/ulisp.c:7673:9: warning: unable to translate function, demoted to extern
pub extern fn eval(arg_form: [*c]object, arg_env: [*c]object) [*c]object;
pub export fn pstr(arg_c: u8) void {
    var c = arg_c;
    _ = &c;
    buildstring(c, &GlobalStringTail);
}
pub export fn findpair(arg_var: [*c]object, arg_env: [*c]object) [*c]object {
    var @"var" = arg_var;
    _ = &@"var";
    var env = arg_env;
    _ = &env;
    var name: symbol_t = @"var".*.unnamed_0.unnamed_1.unnamed_0.name;
    _ = &name;
    var pair: [*c]object = value(name, env);
    _ = &pair;
    if (pair == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        pair = value(name, GlobalEnv);
    }
    return pair;
}
pub export fn lookupdoc(arg_name: builtin_t) [*c]u8 {
    var name = arg_name;
    _ = &name;
    var n: bool = name < @as(builtin_t, @bitCast(@as(c_ulong, tablesize(@as(c_int, 0)))));
    _ = &n;
    return @as([*c]u8, @ptrCast(@constCast(@volatileCast(table(if (@as(c_int, @intFromBool(n)) != 0) @as(c_int, 0) else @as(c_int, 1))[if (@as(c_int, @intFromBool(n)) != 0) name else name -% @as(builtin_t, @bitCast(@as(c_ulong, tablesize(@as(c_int, 0)))))].doc))));
}
pub export fn cstring(arg_form: [*c]object, arg_buffer: [*c]u8, arg_buflen: c_int) [*c]u8 {
    var form = arg_form;
    _ = &form;
    var buffer = arg_buffer;
    _ = &buffer;
    var buflen = arg_buflen;
    _ = &buflen;
    form = checkstring(form).*.unnamed_0.unnamed_0.cdr;
    var index_1: c_int = 0;
    _ = &index_1;
    while (form != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var chars: c_int = form.*.unnamed_0.unnamed_1.unnamed_0.integer;
        _ = &chars;
        {
            var i: c_int = @as(c_int, @bitCast(@as(c_uint, @truncate((@sizeOf(c_int) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8))))))));
            _ = &i;
            while (i >= @as(c_int, 0)) : (i = i - @as(c_int, 8)) {
                var ch: u8 = @as(u8, @bitCast(@as(i8, @truncate((chars >> @intCast(i)) & @as(c_int, 255)))));
                _ = &ch;
                if (ch != 0) {
                    if (index_1 >= (buflen - @as(c_int, 1))) {
                        error2("no room for string");
                    }
                    (blk: {
                        const tmp = blk_1: {
                            const ref = &index_1;
                            const tmp_2 = ref.*;
                            ref.* += 1;
                            break :blk_1 tmp_2;
                        };
                        if (tmp >= 0) break :blk buffer + @as(usize, @intCast(tmp)) else break :blk buffer - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).* = ch;
                }
            }
        }
        form = form.*.unnamed_0.unnamed_0.car;
    }
    (blk: {
        const tmp = index_1;
        if (tmp >= 0) break :blk buffer + @as(usize, @intCast(tmp)) else break :blk buffer - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).* = '\x00';
    return buffer;
}
pub export fn symbol(arg_name: symbol_t) [*c]object {
    var name = arg_name;
    _ = &name;
    var ptr: [*c]object = myalloc();
    _ = &ptr;
    ptr.*.unnamed_0.unnamed_1.type = @as(c_uint, @bitCast(SYMBOL));
    ptr.*.unnamed_0.unnamed_1.unnamed_0.name = name;
    return ptr;
}
pub export fn bsymbol(arg_name: builtin_t) [*c]object {
    var name = arg_name;
    _ = &name;
    return intern(@as(builtin_t, @bitCast(@as(c_ulong, @as(u32, @bitCast(@as(c_uint, @truncate((name +% @as(builtin_t, @bitCast(@as(c_ulong, @as(c_uint, 4096000000))))) << @intCast(2)))))))) | (((name +% @as(builtin_t, @bitCast(@as(c_ulong, @as(c_uint, 4096000000))))) & @as(builtin_t, @bitCast(@as(c_ulong, @as(c_uint, 3221225472))))) >> @intCast(30)));
}
pub export fn printsymbol(arg_form: [*c]object, arg_pfun: pfun_t) void {
    var form = arg_form;
    _ = &form;
    var pfun = arg_pfun;
    _ = &pfun;
    psymbol(form.*.unnamed_0.unnamed_1.unnamed_0.name, pfun);
}
pub export fn tablesize(arg_n: c_int) c_uint {
    var n = arg_n;
    _ = &n;
    return tablesizes[@as(c_uint, @intCast(n))];
}
pub export fn findsubstring(arg_part: [*c]u8, arg_name: builtin_t) bool {
    var part = arg_part;
    _ = &part;
    var name = arg_name;
    _ = &name;
    var n: bool = name < @as(builtin_t, @bitCast(@as(c_ulong, tablesize(@as(c_int, 0)))));
    _ = &n;
    return strstr(table(if (@as(c_int, @intFromBool(n)) != 0) @as(c_int, 0) else @as(c_int, 1))[if (@as(c_int, @intFromBool(n)) != 0) name else name -% @as(builtin_t, @bitCast(@as(c_ulong, tablesize(@as(c_int, 0)))))].string, part) != @as([*c]u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))));
}
pub export fn lookupbuiltin(arg_c: [*c]u8) builtin_t {
    var c = arg_c;
    _ = &c;
    var start: c_uint = tablesize(@as(c_int, 0));
    _ = &start;
    {
        var n: c_int = 1;
        _ = &n;
        while (n >= @as(c_int, 0)) : (n -= 1) {
            var entries: c_int = @as(c_int, @bitCast(tablesize(n)));
            _ = &entries;
            {
                var i: c_int = 0;
                _ = &i;
                while (i < entries) : (i += 1) {
                    if (strcasecmp(c, @as([*c]u8, @ptrCast(@constCast(@volatileCast((blk: {
                        const tmp = i;
                        if (tmp >= 0) break :blk table(n) + @as(usize, @intCast(tmp)) else break :blk table(n) - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                    }).*.string))))) == @as(c_int, 0)) return @as(builtin_t, @bitCast(@as(c_ulong, start +% @as(c_uint, @bitCast(i)))));
                }
            }
            start = 0;
        }
    }
    return @as(builtin_t, @bitCast(@as(c_long, @as(c_int, 198967296))));
}
pub export fn repl(arg_env: [*c]object) void {
    var env = arg_env;
    _ = &env;
    while (true) {
        if (loop_done) return;
        if (BreakLevel != 0) {
            pfstring(" : ", &pserial);
            pint(@as(c_int, @bitCast(@as(c_uint, BreakLevel))), &pserial);
        }
        Context = @as(builtin_t, @bitCast(@as(c_long, NIL)));
        var line: [*c]object = sread(&gserial);
        _ = &line;
        if (BreakLevel != 0) {
            if ((line == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) or (line == bsymbol(@as(builtin_t, @bitCast(@as(c_long, COLONC)))))) {
                pln(&pserial);
                return;
            } else if (line == bsymbol(@as(builtin_t, @bitCast(@as(c_long, COLONA))))) {
                pln(&pserial);
                pln(&pserial);
                GCStack = null;
                longjmp(@as([*c]struct___jmp_buf_tag, @ptrCast(@alignCast(&handler.*[@as(usize, @intCast(0))]))), @as(c_int, 1));
            } else if (line == bsymbol(@as(builtin_t, @bitCast(@as(c_long, COLONB))))) {
                pln(&pserial);
                printbacktrace();
                line = bsymbol(@as(builtin_t, @bitCast(@as(c_long, NOTHING))));
            }
        }
        if (line == @as([*c]object, @ptrFromInt(KET))) {
            error2("unmatched right bracket");
        }
        _ = blk: {
            const tmp = cons(line, GCStack);
            GCStack = tmp;
            break :blk tmp;
        };
        pfl(&pserial);
        line = eval(line, env);
        pfl(&pserial);
        printobject(line, &pserial);
        _ = blk: {
            const tmp = GCStack.*.unnamed_0.unnamed_0.cdr;
            GCStack = tmp;
            break :blk tmp;
        };
        pfl(&pserial);
    }
}
pub export fn fn_princtostring(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return princtostring(args.*.unnamed_0.unnamed_0.car);
}
pub export fn colonp(arg_name: symbol_t) bool {
    var name = arg_name;
    _ = &name;
    if (!((name & @as(symbol_t, @bitCast(@as(c_long, @as(c_int, 3))))) == @as(symbol_t, @bitCast(@as(c_long, @as(c_int, 0)))))) return @as(c_int, 0) != 0;
    var form: [*c]object = @as([*c]object, @ptrFromInt(name));
    _ = &form;
    if (form == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return @as(c_int, 0) != 0;
    return ((form.*.unnamed_0.unnamed_1.unnamed_0.chars >> @intCast((@sizeOf(c_int) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8)))))) & @as(chars_t, @bitCast(@as(c_long, @as(c_int, 255))))) == @as(chars_t, @bitCast(@as(c_long, @as(c_int, ':'))));
}
pub export fn pbuiltin(arg_name: builtin_t, arg_pfun: pfun_t) void {
    var name = arg_name;
    _ = &name;
    var pfun = arg_pfun;
    _ = &pfun;
    var n: c_int = @intFromBool(name < @as(builtin_t, @bitCast(@as(c_ulong, tablesize(@as(c_int, 0))))));
    _ = &n;
    var s: [*c]const u8 = table(if (n != 0) @as(c_int, 0) else @as(c_int, 1))[if (n != 0) name else name -% @as(builtin_t, @bitCast(@as(c_ulong, tablesize(@as(c_int, 0)))))].string;
    _ = &s;
    while (true) {
        var c: u8 = (blk: {
            const ref = &s;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).*;
        _ = &c;
        if (@as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, 0)) return;
        pfun.?(c);
    }
}
pub export fn plispstr(arg_name: symbol_t, arg_pfun: pfun_t) void {
    var name = arg_name;
    _ = &name;
    var pfun = arg_pfun;
    _ = &pfun;
    var form: [*c]object = @as([*c]object, @ptrFromInt(name));
    _ = &form;
    while (form != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var chars: c_int = @as(c_int, @bitCast(@as(c_uint, @truncate(form.*.unnamed_0.unnamed_1.unnamed_0.chars))));
        _ = &chars;
        {
            var i: c_int = @as(c_int, @bitCast(@as(c_uint, @truncate((@sizeOf(c_int) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8))))))));
            _ = &i;
            while (i >= @as(c_int, 0)) : (i = i - @as(c_int, 8)) {
                var ch: u8 = @as(u8, @bitCast(@as(i8, @truncate((chars >> @intCast(i)) & @as(c_int, 255)))));
                _ = &ch;
                if (((@as(c_int, @bitCast(@as(c_uint, Flags))) & (@as(c_int, 1) << @intCast(PRINTREADABLY))) != 0) and ((@as(c_int, @bitCast(@as(c_uint, ch))) == @as(c_int, '"')) or (@as(c_int, @bitCast(@as(c_uint, ch))) == @as(c_int, '\\')))) {
                    pfun.?(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '\\'))))));
                }
                if (ch != 0) {
                    pfun.?(ch);
                }
            }
        }
        form = form.*.unnamed_0.unnamed_0.car;
    }
}
pub export fn readmain(arg_gfun: gfun_t) [*c]object {
    var gfun = arg_gfun;
    _ = &gfun;
    GFun = gfun;
    if (LastChar != 0) {
        LastChar = 0;
        error2("read can only be used with one stream at a time");
    }
    LastChar = 0;
    return sread(&glast);
}
pub export fn setup() void {
    var stackhere: c_int = 0;
    _ = &stackhere;
    StackBottom = @as(?*anyopaque, @ptrCast(&stackhere));
    initworkspace();
    initenv();
    initsleep();
    initgfx();
    _ = millis();
}
pub export fn evaluate(arg_line: [*c]const u8) void {
    var line = arg_line;
    _ = &line;
    _ = blk: {
        _ = @sizeOf(c_int);
        break :blk blk_1: {
            break :blk_1 if (line != @as([*c]const u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {} else {
                __assert_fail("line != NULL", "src/ulisp.c", @as(c_uint, @bitCast(@as(c_int, 8702))), "void evaluate(const char *)");
            };
        };
    };
    input_buf = line;
    input_pos = 0;
    input_len = @as(c_int, @bitCast(@as(c_uint, @truncate(strlen(line)))));
    loop();
}
pub export fn yield_loop() void {
    if ((@as(c_int, @intFromBool(loop_done)) != 0) or (@as(c_int, @intFromBool(wait_for_tick())) != 0)) {
        errorend();
    }
}
pub export var startTime: f64 = 0;
pub export fn millis() f64 {
    return 0;
}
pub export fn micros() c_long {
    return @as(c_long, @intFromFloat(millis() / @as(f64, @floatFromInt(@as(c_int, 1000)))));
}
pub export fn analogRead(arg_pin: c_int) f64 {
    var pin = arg_pin;
    _ = &pin;
    return 0;
}
pub export fn analogWrite(arg_pin: c_int, arg_value_1: f64) void {
    var pin = arg_pin;
    _ = &pin;
    var value_1 = arg_value_1;
    _ = &value_1;
    return;
}
pub export fn digitalRead(arg_pin: c_int) c_int {
    var pin = arg_pin;
    _ = &pin;
    return 0;
}
pub export fn digitalWrite(arg_pin: c_int, arg_mode: c_int) void {
    var pin = arg_pin;
    _ = &pin;
    var mode = arg_mode;
    _ = &mode;
    return;
}
pub export fn pinMode(arg_pin: c_int, arg_mode: c_int) void {
    var pin = arg_pin;
    _ = &pin;
    var mode = arg_mode;
    _ = &mode;
    return;
}
pub export fn delay(arg_millisecs: c_int) void {
    var millisecs = arg_millisecs;
    _ = &millisecs;
}
pub export fn modbacktrace(arg_n: c_int) c_int {
    var n = arg_n;
    _ = &n;
    return @import("std").zig.c_translation.signedRemainder(n + @as(c_int, 8), @as(c_int, 8));
}
pub export fn printbacktrace() void {
    if (@as(c_int, @bitCast(@as(c_uint, TraceStart))) != @as(c_int, @bitCast(@as(c_uint, TraceTop)))) {
        pserial(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '['))))));
    }
    var tracesize: c_int = modbacktrace(@as(c_int, @bitCast(@as(c_uint, TraceTop))) - @as(c_int, @bitCast(@as(c_uint, TraceStart))));
    _ = &tracesize;
    {
        var i: c_int = 1;
        _ = &i;
        while (i <= tracesize) : (i += 1) {
            printsymbol(symbol(Backtrace[@as(c_uint, @intCast(modbacktrace(@as(c_int, @bitCast(@as(c_uint, TraceTop))) - i)))]), &pserial);
            if (i != tracesize) {
                pfstring(" <- ", &pserial);
            }
        }
    }
    if (@as(c_int, @bitCast(@as(c_uint, TraceStart))) != @as(c_int, @bitCast(@as(c_uint, TraceTop)))) {
        pserial(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, ']'))))));
    }
}
pub export fn errorsub(arg_fname: symbol_t, arg_string: [*c]const u8) void {
    var fname = arg_fname;
    _ = &fname;
    var string = arg_string;
    _ = &string;
    pfl(&pserial);
    pfstring("Error", &pserial);
    if (@as(c_int, @bitCast(@as(c_uint, TraceStart))) != @as(c_int, @bitCast(@as(c_uint, TraceTop)))) {
        pserial(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, ' '))))));
    }
    printbacktrace();
    pfstring(": ", &pserial);
    if (fname != sym(@as(builtin_t, @bitCast(@as(c_long, NIL))))) {
        pserial(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '\''))))));
        psymbol(fname, &pserial);
        pserial(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '\''))))));
        pserial(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, ' '))))));
    }
    pfstring(string, &pserial);
}
pub export fn errorend() void {
    GCStack = null;
    longjmp(@as([*c]struct___jmp_buf_tag, @ptrCast(@alignCast(&handler.*[@as(usize, @intCast(0))]))), @as(c_int, 1));
}
pub export fn errorsym(arg_fname: symbol_t, arg_string: [*c]const u8, arg_symbol_1: [*c]object) void {
    var fname = arg_fname;
    _ = &fname;
    var string = arg_string;
    _ = &string;
    var symbol_1 = arg_symbol_1;
    _ = &symbol_1;
    if (!((@as(c_int, @bitCast(@as(c_uint, Flags))) & (@as(c_int, 1) << @intCast(MUFFLEERRORS))) != 0)) {
        errorsub(fname, string);
        pserial(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, ':'))))));
        pserial(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, ' '))))));
        printobject(symbol_1, &pserial);
        pln(&pserial);
    }
    errorend();
}
pub export fn errorsym2(arg_fname: symbol_t, arg_string: [*c]const u8) void {
    var fname = arg_fname;
    _ = &fname;
    var string = arg_string;
    _ = &string;
    if (!((@as(c_int, @bitCast(@as(c_uint, Flags))) & (@as(c_int, 1) << @intCast(MUFFLEERRORS))) != 0)) {
        errorsub(fname, string);
        pln(&pserial);
    }
    errorend();
}
pub export fn @"error"(arg_string: [*c]const u8, arg_symbol_1: [*c]object) void {
    var string = arg_string;
    _ = &string;
    var symbol_1 = arg_symbol_1;
    _ = &symbol_1;
    errorsym(sym(Context), string, symbol_1);
}
pub export fn error2(arg_string: [*c]const u8) void {
    var string = arg_string;
    _ = &string;
    errorsym2(sym(Context), string);
}
pub export fn formaterr(arg_formatstr: [*c]object, arg_string: [*c]const u8, arg_p: u8) void {
    var formatstr = arg_formatstr;
    _ = &formatstr;
    var string = arg_string;
    _ = &string;
    var p = arg_p;
    _ = &p;
    pln(&pserial);
    indent(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 4))))), @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, ' '))))), &pserial);
    printstring(formatstr, &pserial);
    pln(&pserial);
    indent(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, @bitCast(@as(c_uint, p))) + @as(c_int, 5))))), @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, ' '))))), &pserial);
    pserial(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '^'))))));
    error2(string);
    pln(&pserial);
    errorend();
}
pub export const notanumber: [24:0]u8 = "argument is not a number".*;
pub export const notaninteger: [26:0]u8 = "argument is not an integer".*;
pub export const notastring: [24:0]u8 = "argument is not a string".*;
pub export const notalist: [22:0]u8 = "argument is not a list".*;
pub export const notasymbol: [24:0]u8 = "argument is not a symbol".*;
pub export const notproper: [29:0]u8 = "argument is not a proper list".*;
pub export const toomanyargs: [18:0]u8 = "too many arguments".*;
pub export const toofewargs: [17:0]u8 = "too few arguments".*;
pub export const noargument: [16:0]u8 = "missing argument".*;
pub export const nostream: [23:0]u8 = "missing stream argument".*;
pub export const overflow: [19:0]u8 = "arithmetic overflow".*;
pub export const divisionbyzero: [16:0]u8 = "division by zero".*;
pub export const indexnegative: [23:0]u8 = "index can't be negative".*;
pub export const invalidarg: [16:0]u8 = "invalid argument".*;
pub export const invalidkey: [15:0]u8 = "invalid keyword".*;
pub export const illegalclause: [14:0]u8 = "illegal clause".*;
pub export const illegalfn: [16:0]u8 = "illegal function".*;
pub export const invalidpin: [11:0]u8 = "invalid pin".*;
pub export const oddargs: [23:0]u8 = "odd number of arguments".*;
pub export const indexrange: [18:0]u8 = "index out of range".*;
pub export const canttakecar: [14:0]u8 = "can't take car".*;
pub export const canttakecdr: [14:0]u8 = "can't take cdr".*;
pub export const unknownstreamtype: [19:0]u8 = "unknown stream type".*;
pub export fn initworkspace() void {
    Freelist = null;
    {
        var i: c_int = (@as(c_int, 65536) - @as(c_int, 0)) - @as(c_int, 1);
        _ = &i;
        while (i >= @as(c_int, 0)) : (i -= 1) {
            var obj: [*c]object = &Workspace[@as(c_uint, @intCast(i))];
            _ = &obj;
            obj.*.unnamed_0.unnamed_0.car = null;
            obj.*.unnamed_0.unnamed_0.cdr = Freelist;
            Freelist = obj;
            Freespace +%= 1;
        }
    }
}
pub export fn myalloc() [*c]object {
    if (Freespace == @as(c_uint, @bitCast(@as(c_int, 0)))) {
        Context = @as(builtin_t, @bitCast(@as(c_long, NIL)));
        error2("no room");
    }
    var temp: [*c]object = Freelist;
    _ = &temp;
    Freelist = Freelist.*.unnamed_0.unnamed_0.cdr;
    Freespace -%= 1;
    return temp;
}
pub export fn myfree(arg_obj: [*c]object) void {
    var obj = arg_obj;
    _ = &obj;
    obj.*.unnamed_0.unnamed_0.car = null;
    obj.*.unnamed_0.unnamed_0.cdr = Freelist;
    Freelist = obj;
    Freespace +%= 1;
}
pub export fn number(arg_n: c_int) [*c]object {
    var n = arg_n;
    _ = &n;
    var ptr: [*c]object = myalloc();
    _ = &ptr;
    ptr.*.unnamed_0.unnamed_1.type = @as(c_uint, @bitCast(NUMBER));
    ptr.*.unnamed_0.unnamed_1.unnamed_0.integer = n;
    return ptr;
}
pub export fn makefloat(arg_f: f32) [*c]object {
    var f = arg_f;
    _ = &f;
    var ptr: [*c]object = myalloc();
    _ = &ptr;
    ptr.*.unnamed_0.unnamed_1.type = @as(c_uint, @bitCast(FLOAT));
    ptr.*.unnamed_0.unnamed_1.unnamed_0.single_float = f;
    return ptr;
}
pub export fn character(arg_c: u8) [*c]object {
    var c = arg_c;
    _ = &c;
    var ptr: [*c]object = myalloc();
    _ = &ptr;
    ptr.*.unnamed_0.unnamed_1.type = @as(c_uint, @bitCast(CHARACTER));
    ptr.*.unnamed_0.unnamed_1.unnamed_0.chars = @as(chars_t, @bitCast(@as(c_ulong, c)));
    return ptr;
}
pub export fn cons(arg_arg1: [*c]object, arg_arg2: [*c]object) [*c]object {
    var arg1 = arg_arg1;
    _ = &arg1;
    var arg2 = arg_arg2;
    _ = &arg2;
    var ptr: [*c]object = myalloc();
    _ = &ptr;
    ptr.*.unnamed_0.unnamed_0.car = arg1;
    ptr.*.unnamed_0.unnamed_0.cdr = arg2;
    return ptr;
}
pub export fn eqsymbols(arg_obj: [*c]object, arg_buffer: [*c]u8) bool {
    var obj = arg_obj;
    _ = &obj;
    var buffer = arg_buffer;
    _ = &buffer;
    var arg: [*c]object = obj.*.unnamed_0.unnamed_0.cdr;
    _ = &arg;
    var i: c_int = 0;
    _ = &i;
    while (!((arg == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (@as(c_int, @bitCast(@as(c_uint, (blk: {
        const tmp = i;
        if (tmp >= 0) break :blk buffer + @as(usize, @intCast(tmp)) else break :blk buffer - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*))) == @as(c_int, 0)))) {
        if ((arg == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) or (@as(c_int, @bitCast(@as(c_uint, (blk: {
            const tmp = i;
            if (tmp >= 0) break :blk buffer + @as(usize, @intCast(tmp)) else break :blk buffer - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*))) == @as(c_int, 0))) return @as(c_int, 0) != 0;
        var @"test": chars_t = 0;
        _ = &@"test";
        var shift: c_int = 24;
        _ = &shift;
        {
            var j: c_int = 0;
            _ = &j;
            while (j < @as(c_int, 4)) : (_ = blk: {
                j += 1;
                break :blk blk_1: {
                    const ref = &i;
                    const tmp = ref.*;
                    ref.* += 1;
                    break :blk_1 tmp;
                };
            }) {
                if (@as(c_int, @bitCast(@as(c_uint, (blk: {
                    const tmp = i;
                    if (tmp >= 0) break :blk buffer + @as(usize, @intCast(tmp)) else break :blk buffer - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*))) == @as(c_int, 0)) break;
                @"test" = @"test" | @as(chars_t, @bitCast(@as(c_long, @as(c_int, @bitCast(@as(c_uint, (blk: {
                    const tmp = i;
                    if (tmp >= 0) break :blk buffer + @as(usize, @intCast(tmp)) else break :blk buffer - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
                }).*))) << @intCast(shift))));
                shift = shift - @as(c_int, 8);
            }
        }
        if (arg.*.unnamed_0.unnamed_1.unnamed_0.chars != @"test") return @as(c_int, 0) != 0;
        arg = arg.*.unnamed_0.unnamed_0.car;
    }
    return @as(c_int, 1) != 0;
}
pub export fn internlong(arg_buffer: [*c]u8) [*c]object {
    var buffer = arg_buffer;
    _ = &buffer;
    {
        var i: c_int = 0;
        _ = &i;
        while (i < (@as(c_int, 65536) - @as(c_int, 0))) : (i += 1) {
            var obj: [*c]object = &Workspace[@as(c_uint, @intCast(i))];
            _ = &obj;
            if (((obj.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(SYMBOL))) and ((obj.*.unnamed_0.unnamed_1.unnamed_0.name & @as(symbol_t, @bitCast(@as(c_long, @as(c_int, 3))))) == @as(symbol_t, @bitCast(@as(c_long, @as(c_int, 0)))))) and (@as(c_int, @intFromBool(eqsymbols(obj, buffer))) != 0)) return obj;
        }
    }
    var obj: [*c]object = lispstring(buffer);
    _ = &obj;
    obj.*.unnamed_0.unnamed_1.type = @as(c_uint, @bitCast(SYMBOL));
    return obj;
}
pub export fn stream(arg_streamtype: u8, arg_address: u8) [*c]object {
    var streamtype = arg_streamtype;
    _ = &streamtype;
    var address = arg_address;
    _ = &address;
    var ptr: [*c]object = myalloc();
    _ = &ptr;
    ptr.*.unnamed_0.unnamed_1.type = @as(c_uint, @bitCast(STREAM));
    ptr.*.unnamed_0.unnamed_1.unnamed_0.integer = (@as(c_int, @bitCast(@as(c_uint, streamtype))) << @intCast(8)) | @as(c_int, @bitCast(@as(c_uint, address)));
    return ptr;
}
pub export fn newstring() [*c]object {
    var ptr: [*c]object = myalloc();
    _ = &ptr;
    ptr.*.unnamed_0.unnamed_1.type = @as(c_uint, @bitCast(STRING));
    ptr.*.unnamed_0.unnamed_1.unnamed_0.chars = 0;
    return ptr;
}
pub export const floatingpoint: [15:0]u8 = ":floating-point".*;
pub export const arrays: [7:0]u8 = ":arrays".*;
pub export const doc: [14:0]u8 = ":documentation".*;
pub export const errorhandling: [15:0]u8 = ":error-handling".*;
pub export const wifi: [6:0]u8 = ":wi-fi".*;
pub export const gfx: [4:0]u8 = ":gfx".*;
pub export const sdcard: [8:0]u8 = ":sd-card".*;
pub export const lx6: [4:0]u8 = ":lx6".*;
pub export const lx7: [4:0]u8 = ":lx7".*;
pub export const riscv: [7:0]u8 = ":risc-v".*;
pub export fn features() [*c]object {
    var result: [*c]object = null;
    _ = &result;
    _ = blk: {
        const tmp = cons(internlong(@as([*c]u8, @ptrCast(@constCast(@volatileCast(@as([*c]const u8, @ptrCast(@alignCast(&wifi[@as(usize, @intCast(0))])))))))), result);
        result = tmp;
        break :blk tmp;
    };
    _ = blk: {
        const tmp = cons(internlong(@as([*c]u8, @ptrCast(@constCast(@volatileCast(@as([*c]const u8, @ptrCast(@alignCast(&errorhandling[@as(usize, @intCast(0))])))))))), result);
        result = tmp;
        break :blk tmp;
    };
    _ = blk: {
        const tmp = cons(internlong(@as([*c]u8, @ptrCast(@constCast(@volatileCast(@as([*c]const u8, @ptrCast(@alignCast(&doc[@as(usize, @intCast(0))])))))))), result);
        result = tmp;
        break :blk tmp;
    };
    _ = blk: {
        const tmp = cons(internlong(@as([*c]u8, @ptrCast(@constCast(@volatileCast(@as([*c]const u8, @ptrCast(@alignCast(&arrays[@as(usize, @intCast(0))])))))))), result);
        result = tmp;
        break :blk tmp;
    };
    _ = blk: {
        const tmp = cons(internlong(@as([*c]u8, @ptrCast(@constCast(@volatileCast(@as([*c]const u8, @ptrCast(@alignCast(&floatingpoint[@as(usize, @intCast(0))])))))))), result);
        result = tmp;
        break :blk tmp;
    };
    return result;
}
// src/ulisp.c:790:3: warning: TODO implement translation of stmt class LabelStmtClass

// src/ulisp.c:789:6: warning: unable to translate function, demoted to extern
pub extern fn markobject(arg_obj: [*c]object) void;
pub export fn sweep() void {
    Freelist = null;
    Freespace = 0;
    {
        var i: c_int = (@as(c_int, 65536) - @as(c_int, 0)) - @as(c_int, 1);
        _ = &i;
        while (i >= @as(c_int, 0)) : (i -= 1) {
            var obj: [*c]object = &Workspace[@as(c_uint, @intCast(i))];
            _ = &obj;
            if (!((@as(usize, @intCast(@intFromPtr(obj.*.unnamed_0.unnamed_0.car))) & @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))) != @as(usize, @bitCast(@as(c_long, @as(c_int, 0)))))) {
                myfree(obj);
            } else {
                _ = blk: {
                    const tmp = @as([*c]object, @ptrFromInt(@as(usize, @intCast(@intFromPtr(obj.*.unnamed_0.unnamed_0.car))) & @as(usize, @bitCast(@as(c_long, ~@as(c_int, 1))))));
                    obj.*.unnamed_0.unnamed_0.car = tmp;
                    break :blk tmp;
                };
            }
        }
    }
}
pub export fn gc(arg_form: [*c]object, arg_env: [*c]object) void {
    var form = arg_form;
    _ = &form;
    var env = arg_env;
    _ = &env;
    markobject(tee);
    markobject(GlobalEnv);
    markobject(GCStack);
    markobject(form);
    markobject(env);
    sweep();
}
pub export fn movepointer(arg_from: [*c]object, arg_to: [*c]object) void {
    var from = arg_from;
    _ = &from;
    var to = arg_to;
    _ = &to;
    var limit: usize = (@as(usize, @intCast(@intFromPtr(from))) -% @as(usize, @intCast(@intFromPtr(@as([*c]object, @ptrCast(@alignCast(&Workspace[@as(usize, @intCast(0))]))))))) / @sizeOf(usize);
    _ = &limit;
    {
        var i: usize = 0;
        _ = &i;
        while (i <= limit) : (i +%= 1) {
            var obj: [*c]object = &Workspace[i];
            _ = &obj;
            var type_1: c_uint = obj.*.unnamed_0.unnamed_1.type & @as(c_uint, @bitCast(~@as(c_int, 1)));
            _ = &type_1;
            if (((@as(usize, @intCast(@intFromPtr(obj.*.unnamed_0.unnamed_0.car))) & @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))) != @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) and (((type_1 >= @as(c_uint, @bitCast(ARRAY))) or (type_1 == @as(c_uint, @bitCast(ZZERO)))) or ((type_1 == @as(c_uint, @bitCast(SYMBOL))) and ((obj.*.unnamed_0.unnamed_1.unnamed_0.name & @as(symbol_t, @bitCast(@as(c_long, @as(c_int, 3))))) == @as(symbol_t, @bitCast(@as(c_long, @as(c_int, 0)))))))) {
                if (obj.*.unnamed_0.unnamed_0.car == @as([*c]object, @ptrFromInt(@as(usize, @intCast(@intFromPtr(from))) | @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))))) {
                    obj.*.unnamed_0.unnamed_0.car = @as([*c]object, @ptrFromInt(@as(usize, @intCast(@intFromPtr(to))) | @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))));
                }
                if (obj.*.unnamed_0.unnamed_0.cdr == from) {
                    obj.*.unnamed_0.unnamed_0.cdr = to;
                }
            }
        }
    }
    {
        var i: usize = 0;
        _ = &i;
        while (i <= limit) : (i +%= 1) {
            var obj: [*c]object = &Workspace[i];
            _ = &obj;
            if ((@as(usize, @intCast(@intFromPtr(obj.*.unnamed_0.unnamed_0.car))) & @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))) != @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) {
                var type_1: c_uint = obj.*.unnamed_0.unnamed_1.type & @as(c_uint, @bitCast(~@as(c_int, 1)));
                _ = &type_1;
                if ((type_1 == @as(c_uint, @bitCast(STRING))) or ((type_1 == @as(c_uint, @bitCast(SYMBOL))) and ((obj.*.unnamed_0.unnamed_1.unnamed_0.name & @as(symbol_t, @bitCast(@as(c_long, @as(c_int, 3))))) == @as(symbol_t, @bitCast(@as(c_long, @as(c_int, 0))))))) {
                    obj = obj.*.unnamed_0.unnamed_0.cdr;
                    while (obj != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
                        if (obj.*.unnamed_0.unnamed_0.cdr == to) {
                            obj.*.unnamed_0.unnamed_0.cdr = from;
                        }
                        obj = @as([*c]object, @ptrFromInt(@as(usize, @intCast(@intFromPtr(obj.*.unnamed_0.unnamed_0.car))) & @as(usize, @bitCast(@as(c_long, ~@as(c_int, 1))))));
                    }
                }
            }
        }
    }
}
pub export fn compactimage(arg_arg: [*c][*c]object) usize {
    var arg = arg_arg;
    _ = &arg;
    markobject(tee);
    markobject(GlobalEnv);
    markobject(GCStack);
    var firstfree: [*c]object = @as([*c]object, @ptrCast(@alignCast(&Workspace[@as(usize, @intCast(0))])));
    _ = &firstfree;
    while ((@as(usize, @intCast(@intFromPtr(firstfree.*.unnamed_0.unnamed_0.car))) & @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))) != @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) {
        firstfree += 1;
    }
    var obj: [*c]object = &Workspace[@as(c_uint, @intCast((@as(c_int, 65536) - @as(c_int, 0)) - @as(c_int, 1)))];
    _ = &obj;
    while (firstfree < obj) {
        if ((@as(usize, @intCast(@intFromPtr(obj.*.unnamed_0.unnamed_0.car))) & @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))) != @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) {
            firstfree.*.unnamed_0.unnamed_0.car = obj.*.unnamed_0.unnamed_0.car;
            firstfree.*.unnamed_0.unnamed_0.cdr = obj.*.unnamed_0.unnamed_0.cdr;
            _ = blk: {
                const tmp = @as([*c]object, @ptrFromInt(@as(usize, @intCast(@intFromPtr(obj.*.unnamed_0.unnamed_0.car))) & @as(usize, @bitCast(@as(c_long, ~@as(c_int, 1))))));
                obj.*.unnamed_0.unnamed_0.car = tmp;
                break :blk tmp;
            };
            movepointer(obj, firstfree);
            if (GlobalEnv == obj) {
                GlobalEnv = firstfree;
            }
            if (GCStack == obj) {
                GCStack = firstfree;
            }
            if (arg.* == obj) {
                arg.* = firstfree;
            }
            while ((@as(usize, @intCast(@intFromPtr(firstfree.*.unnamed_0.unnamed_0.car))) & @as(usize, @bitCast(@as(c_long, @as(c_int, 1))))) != @as(usize, @bitCast(@as(c_long, @as(c_int, 0))))) {
                firstfree += 1;
            }
        }
        obj -= 1;
    }
    sweep();
    return @as(usize, @bitCast(@divExact(@as(c_long, @bitCast(@intFromPtr(firstfree) -% @intFromPtr(@as([*c]object, @ptrCast(@alignCast(&Workspace[@as(usize, @intCast(0))])))))), @sizeOf(object))));
}
pub export fn MakeFilename(arg_arg: [*c]object, arg_buffer: [*c]u8) [*c]u8 {
    var arg = arg_arg;
    _ = &arg;
    var buffer = arg_buffer;
    _ = &buffer;
    var max: c_int = @as(c_int, 36) - @as(c_int, 1);
    _ = &max;
    buffer[@as(c_uint, @intCast(@as(c_int, 0)))] = '/';
    var i: c_int = 1;
    _ = &i;
    while (true) {
        var c: u8 = @as(u8, @bitCast(nthchar(arg, i - @as(c_int, 1))));
        _ = &c;
        if (@as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, '\x00')) break;
        (blk: {
            const tmp = blk_1: {
                const ref = &i;
                const tmp_2 = ref.*;
                ref.* += 1;
                break :blk_1 tmp_2;
            };
            if (tmp >= 0) break :blk buffer + @as(usize, @intCast(tmp)) else break :blk buffer - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).* = c;
        if (!(i < max)) break;
    }
    (blk: {
        const tmp = i;
        if (tmp >= 0) break :blk buffer + @as(usize, @intCast(tmp)) else break :blk buffer - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).* = '\x00';
    return buffer;
}
pub export fn EpromWriteInt(arg_addr: [*c]c_int, arg_data: usize) void {
    var addr = arg_addr;
    _ = &addr;
    var data = arg_data;
    _ = &data;
    {
        _ = printf("TODO: EpromWriteInt\r\n");
        return;
    }
}
pub export fn EpromReadInt(arg_addr: [*c]c_int) c_int {
    var addr = arg_addr;
    _ = &addr;
    {
        _ = printf("TODO: EpromReadInt\r\n");
        return 0;
    }
}
pub export fn saveimage(arg_arg: [*c]object) c_uint {
    var arg = arg_arg;
    _ = &arg;
    _ = &arg;
    error2("not available");
    return 0;
}
pub export fn loadimage(arg_arg: [*c]object) c_uint {
    var arg = arg_arg;
    _ = &arg;
    _ = &arg;
    error2("not available");
    return 0;
}
pub export fn autorunimage() void {
    error2("autorun not available");
}
pub export fn tracing(arg_name: symbol_t) c_int {
    var name = arg_name;
    _ = &name;
    var i: c_int = 0;
    _ = &i;
    while (i < @as(c_int, 3)) {
        if (@as(symbol_t, @bitCast(@as(c_ulong, TraceFn[@as(c_uint, @intCast(i))]))) == name) return i + @as(c_int, 1);
        i += 1;
    }
    return 0;
}
pub export fn trace(arg_name: symbol_t) void {
    var name = arg_name;
    _ = &name;
    if (tracing(name) != 0) {
        @"error"("already being traced", symbol(name));
    }
    var i: c_int = 0;
    _ = &i;
    while (i < @as(c_int, 3)) {
        if (TraceFn[@as(c_uint, @intCast(i))] == @as(c_uint, @bitCast(@as(c_int, 0)))) {
            TraceFn[@as(c_uint, @intCast(i))] = @as(c_uint, @bitCast(@as(c_uint, @truncate(name))));
            TraceDepth[@as(c_uint, @intCast(i))] = 0;
            return;
        }
        i += 1;
    }
    error2("already tracing 3 functions");
}
pub export fn untrace(arg_name: symbol_t) void {
    var name = arg_name;
    _ = &name;
    var i: c_int = 0;
    _ = &i;
    while (i < @as(c_int, 3)) {
        if (@as(symbol_t, @bitCast(@as(c_ulong, TraceFn[@as(c_uint, @intCast(i))]))) == name) {
            TraceFn[@as(c_uint, @intCast(i))] = 0;
            return;
        }
        i += 1;
    }
    @"error"("not tracing", symbol(name));
}
pub export fn consp(arg_x: [*c]object) bool {
    var x = arg_x;
    _ = &x;
    if (x == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return @as(c_int, 0) != 0;
    var type_1: c_uint = x.*.unnamed_0.unnamed_1.type;
    _ = &type_1;
    return (type_1 >= @as(c_uint, @bitCast(PAIR))) or (type_1 == @as(c_uint, @bitCast(ZZERO)));
}
pub export fn listp(arg_x: [*c]object) bool {
    var x = arg_x;
    _ = &x;
    if (x == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return @as(c_int, 1) != 0;
    var type_1: c_uint = x.*.unnamed_0.unnamed_1.type;
    _ = &type_1;
    return (type_1 >= @as(c_uint, @bitCast(PAIR))) or (type_1 == @as(c_uint, @bitCast(ZZERO)));
}
pub export fn quote(arg_arg: [*c]object) [*c]object {
    var arg = arg_arg;
    _ = &arg;
    return cons(bsymbol(@as(builtin_t, @bitCast(@as(c_long, QUOTE)))), cons(arg, null));
}
pub export fn builtin(arg_name: symbol_t) builtin_t {
    var name = arg_name;
    _ = &name;
    return @as(builtin_t, @bitCast((((name >> @intCast(2)) & @as(symbol_t, @bitCast(@as(c_long, @as(c_int, 1073741823))))) | ((name & @as(symbol_t, @bitCast(@as(c_long, @as(c_int, 3))))) << @intCast(30))) -% @as(symbol_t, @bitCast(@as(c_ulong, @as(c_uint, 4096000000))))));
}
pub export fn toradix40(arg_ch: u8) i8 {
    var ch = arg_ch;
    _ = &ch;
    if (@as(c_int, @bitCast(@as(c_uint, ch))) == @as(c_int, 0)) return 0;
    if ((@as(c_int, @bitCast(@as(c_uint, ch))) >= @as(c_int, '0')) and (@as(c_int, @bitCast(@as(c_uint, ch))) <= @as(c_int, '9'))) return @as(i8, @bitCast(@as(i8, @truncate((@as(c_int, @bitCast(@as(c_uint, ch))) - @as(c_int, '0')) + @as(c_int, 1)))));
    if (@as(c_int, @bitCast(@as(c_uint, ch))) == @as(c_int, '-')) return 37;
    if (@as(c_int, @bitCast(@as(c_uint, ch))) == @as(c_int, '*')) return 38;
    if (@as(c_int, @bitCast(@as(c_uint, ch))) == @as(c_int, '$')) return 39;
    ch = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, @bitCast(@as(c_uint, ch))) | @as(c_int, 32)))));
    if ((@as(c_int, @bitCast(@as(c_uint, ch))) >= @as(c_int, 'a')) and (@as(c_int, @bitCast(@as(c_uint, ch))) <= @as(c_int, 'z'))) return @as(i8, @bitCast(@as(i8, @truncate((@as(c_int, @bitCast(@as(c_uint, ch))) - @as(c_int, 'a')) + @as(c_int, 11)))));
    return @as(i8, @bitCast(@as(i8, @truncate(-@as(c_int, 1)))));
}
pub export fn fromradix40(arg_n: u8) u8 {
    var n = arg_n;
    _ = &n;
    if ((@as(c_int, @bitCast(@as(c_uint, n))) >= @as(c_int, 1)) and (@as(c_int, @bitCast(@as(c_uint, n))) <= @as(c_int, 10))) return @as(u8, @bitCast(@as(i8, @truncate((@as(c_int, '0') + @as(c_int, @bitCast(@as(c_uint, n)))) - @as(c_int, 1)))));
    if ((@as(c_int, @bitCast(@as(c_uint, n))) >= @as(c_int, 11)) and (@as(c_int, @bitCast(@as(c_uint, n))) <= @as(c_int, 36))) return @as(u8, @bitCast(@as(i8, @truncate((@as(c_int, 'a') + @as(c_int, @bitCast(@as(c_uint, n)))) - @as(c_int, 11)))));
    if (@as(c_int, @bitCast(@as(c_uint, n))) == @as(c_int, 37)) return '-';
    if (@as(c_int, @bitCast(@as(c_uint, n))) == @as(c_int, 38)) return '*';
    if (@as(c_int, @bitCast(@as(c_uint, n))) == @as(c_int, 39)) return '$';
    return 0;
}
pub export fn pack40(arg_buffer: [*c]u8) u32 {
    var buffer = arg_buffer;
    _ = &buffer;
    var x: c_int = 0;
    _ = &x;
    var j: c_int = 0;
    _ = &j;
    {
        var i: c_int = 0;
        _ = &i;
        while (i < @as(c_int, 6)) : (i += 1) {
            x = (x * @as(c_int, 40)) + @as(c_int, @bitCast(@as(c_int, toradix40((blk: {
                const tmp = j;
                if (tmp >= 0) break :blk buffer + @as(usize, @intCast(tmp)) else break :blk buffer - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*))));
            if (@as(c_int, @bitCast(@as(c_uint, (blk: {
                const tmp = j;
                if (tmp >= 0) break :blk buffer + @as(usize, @intCast(tmp)) else break :blk buffer - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*))) != @as(c_int, 0)) {
                j += 1;
            }
        }
    }
    return @as(u32, @bitCast(x));
}
pub export fn valid40(arg_buffer: [*c]u8) bool {
    var buffer = arg_buffer;
    _ = &buffer;
    var t: c_int = 11;
    _ = &t;
    {
        var i: c_int = 0;
        _ = &i;
        while (i < @as(c_int, 6)) : (i += 1) {
            if (@as(c_int, @bitCast(@as(c_int, toradix40((blk: {
                const tmp = i;
                if (tmp >= 0) break :blk buffer + @as(usize, @intCast(tmp)) else break :blk buffer - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*)))) < t) return @as(c_int, 0) != 0;
            if (@as(c_int, @bitCast(@as(c_uint, (blk: {
                const tmp = i;
                if (tmp >= 0) break :blk buffer + @as(usize, @intCast(tmp)) else break :blk buffer - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
            }).*))) == @as(c_int, 0)) break;
            t = 0;
        }
    }
    return @as(c_int, 1) != 0;
}
pub export fn digitvalue(arg_d: u8) i8 {
    var d = arg_d;
    _ = &d;
    if ((@as(c_int, @bitCast(@as(c_uint, d))) >= @as(c_int, '0')) and (@as(c_int, @bitCast(@as(c_uint, d))) <= @as(c_int, '9'))) return @as(i8, @bitCast(@as(i8, @truncate(@as(c_int, @bitCast(@as(c_uint, d))) - @as(c_int, '0')))));
    d = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, @bitCast(@as(c_uint, d))) | @as(c_int, 32)))));
    if ((@as(c_int, @bitCast(@as(c_uint, d))) >= @as(c_int, 'a')) and (@as(c_int, @bitCast(@as(c_uint, d))) <= @as(c_int, 'f'))) return @as(i8, @bitCast(@as(i8, @truncate((@as(c_int, @bitCast(@as(c_uint, d))) - @as(c_int, 'a')) + @as(c_int, 10)))));
    return 16;
}
pub export fn checkinteger(arg_obj: [*c]object) c_int {
    var obj = arg_obj;
    _ = &obj;
    if (!((obj != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (obj.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(NUMBER))))) {
        @"error"(@as([*c]const u8, @ptrCast(@alignCast(&notaninteger[@as(usize, @intCast(0))]))), obj);
    }
    return obj.*.unnamed_0.unnamed_1.unnamed_0.integer;
}
pub export fn checkbitvalue(arg_obj: [*c]object) c_int {
    var obj = arg_obj;
    _ = &obj;
    if (!((obj != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (obj.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(NUMBER))))) {
        @"error"(@as([*c]const u8, @ptrCast(@alignCast(&notaninteger[@as(usize, @intCast(0))]))), obj);
    }
    var n: c_int = obj.*.unnamed_0.unnamed_1.unnamed_0.integer;
    _ = &n;
    if ((n & ~@as(c_int, 1)) != 0) {
        @"error"("argument is not a bit value", obj);
    }
    return n;
}
pub export fn checkintfloat(arg_obj: [*c]object) f32 {
    var obj = arg_obj;
    _ = &obj;
    if ((obj != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (obj.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(NUMBER)))) return @as(f32, @floatFromInt(obj.*.unnamed_0.unnamed_1.unnamed_0.integer));
    if (!((obj != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (obj.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(FLOAT))))) {
        @"error"(@as([*c]const u8, @ptrCast(@alignCast(&notanumber[@as(usize, @intCast(0))]))), obj);
    }
    return obj.*.unnamed_0.unnamed_1.unnamed_0.single_float;
}
pub export fn checkchar(arg_obj: [*c]object) c_int {
    var obj = arg_obj;
    _ = &obj;
    if (!((obj != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (obj.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(CHARACTER))))) {
        @"error"("argument is not a character", obj);
    }
    return @as(c_int, @bitCast(@as(c_uint, @truncate(obj.*.unnamed_0.unnamed_1.unnamed_0.chars))));
}
pub export fn checkstring(arg_obj: [*c]object) [*c]object {
    var obj = arg_obj;
    _ = &obj;
    if (!((obj != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (obj.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(STRING))))) {
        @"error"(@as([*c]const u8, @ptrCast(@alignCast(&notastring[@as(usize, @intCast(0))]))), obj);
    }
    return obj;
}
pub export fn isstream(arg_obj: [*c]object) c_int {
    var obj = arg_obj;
    _ = &obj;
    if (!((obj != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (obj.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(STREAM))))) {
        @"error"("not a stream", obj);
    }
    return obj.*.unnamed_0.unnamed_1.unnamed_0.integer;
}
pub export fn isbuiltin(arg_obj: [*c]object, arg_n: builtin_t) c_int {
    var obj = arg_obj;
    _ = &obj;
    var n = arg_n;
    _ = &n;
    return @intFromBool(((obj != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (obj.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(SYMBOL)))) and (obj.*.unnamed_0.unnamed_1.unnamed_0.name == sym(n)));
}
pub export fn builtinp(arg_name: symbol_t) bool {
    var name = arg_name;
    _ = &name;
    return (((name >> @intCast(2)) & @as(symbol_t, @bitCast(@as(c_long, @as(c_int, 1073741823))))) | ((name & @as(symbol_t, @bitCast(@as(c_long, @as(c_int, 3))))) << @intCast(30))) >= @as(symbol_t, @bitCast(@as(c_ulong, @as(c_uint, 4096000000))));
}
pub export fn checkkeyword(arg_obj: [*c]object) c_int {
    var obj = arg_obj;
    _ = &obj;
    if (!keywordp(obj)) {
        @"error"("argument is not a keyword", obj);
    }
    var kname: builtin_t = builtin(obj.*.unnamed_0.unnamed_1.unnamed_0.name);
    _ = &kname;
    var context: u8 = getminmax(kname);
    _ = &context;
    if ((@as(c_int, @bitCast(@as(c_uint, context))) != @as(c_int, 0)) and (@as(builtin_t, @bitCast(@as(c_ulong, context))) != Context)) {
        @"error"(@as([*c]const u8, @ptrCast(@alignCast(&invalidkey[@as(usize, @intCast(0))]))), obj);
    }
    return @as(c_int, @bitCast(@as(c_int, @truncate(lookupfn(kname)))));
}
pub export fn checkargs(arg_args: [*c]object) void {
    var args = arg_args;
    _ = &args;
    var nargs: c_int = listlength(args);
    _ = &nargs;
    checkminmax(Context, nargs);
}
pub export fn eqlongsymbol(arg_sym1: symbol_t, arg_sym2: symbol_t) bool {
    var sym1 = arg_sym1;
    _ = &sym1;
    var sym2 = arg_sym2;
    _ = &sym2;
    var arg1: [*c]object = @as([*c]object, @ptrFromInt(sym1));
    _ = &arg1;
    var arg2: [*c]object = @as([*c]object, @ptrFromInt(sym2));
    _ = &arg2;
    while ((arg1 != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) or (arg2 != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))))) {
        if ((arg1 == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) or (arg2 == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))))) return @as(c_int, 0) != 0;
        if (arg1.*.unnamed_0.unnamed_1.unnamed_0.chars != arg2.*.unnamed_0.unnamed_1.unnamed_0.chars) return @as(c_int, 0) != 0;
        arg1 = arg1.*.unnamed_0.unnamed_0.car;
        arg2 = arg2.*.unnamed_0.unnamed_0.car;
    }
    return @as(c_int, 1) != 0;
}
pub export fn eqsymbol(arg_sym1: symbol_t, arg_sym2: symbol_t) bool {
    var sym1 = arg_sym1;
    _ = &sym1;
    var sym2 = arg_sym2;
    _ = &sym2;
    if (!((sym1 & @as(symbol_t, @bitCast(@as(c_long, @as(c_int, 3))))) == @as(symbol_t, @bitCast(@as(c_long, @as(c_int, 0))))) and !((sym2 & @as(symbol_t, @bitCast(@as(c_long, @as(c_int, 3))))) == @as(symbol_t, @bitCast(@as(c_long, @as(c_int, 0)))))) return sym1 == sym2;
    if (((sym1 & @as(symbol_t, @bitCast(@as(c_long, @as(c_int, 3))))) == @as(symbol_t, @bitCast(@as(c_long, @as(c_int, 0))))) and ((sym2 & @as(symbol_t, @bitCast(@as(c_long, @as(c_int, 3))))) == @as(symbol_t, @bitCast(@as(c_long, @as(c_int, 0)))))) return eqlongsymbol(sym1, sym2);
    return @as(c_int, 0) != 0;
}
pub export fn eq(arg_arg1: [*c]object, arg_arg2: [*c]object) bool {
    var arg1 = arg_arg1;
    _ = &arg1;
    var arg2 = arg_arg2;
    _ = &arg2;
    if (arg1 == arg2) return @as(c_int, 1) != 0;
    if ((arg1 == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) or (arg2 == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))))) return @as(c_int, 0) != 0;
    if (arg1.*.unnamed_0.unnamed_0.cdr != arg2.*.unnamed_0.unnamed_0.cdr) return @as(c_int, 0) != 0;
    if (((arg1 != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg1.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(SYMBOL)))) and ((arg2 != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg2.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(SYMBOL))))) return @as(c_int, 1) != 0;
    if (((arg1 != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg1.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(NUMBER)))) and ((arg2 != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg2.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(NUMBER))))) return @as(c_int, 1) != 0;
    if (((arg1 != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg1.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(FLOAT)))) and ((arg2 != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg2.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(FLOAT))))) return @as(c_int, 1) != 0;
    if (((arg1 != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg1.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(CHARACTER)))) and ((arg2 != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg2.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(CHARACTER))))) return @as(c_int, 1) != 0;
    return @as(c_int, 0) != 0;
}
pub export fn equal(arg_arg1: [*c]object, arg_arg2: [*c]object) bool {
    var arg1 = arg_arg1;
    _ = &arg1;
    var arg2 = arg_arg2;
    _ = &arg2;
    if (((arg1 != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg1.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(STRING)))) and ((arg2 != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg2.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(STRING))))) return stringcompare(cons(arg1, cons(arg2, null)), @as(c_int, 0) != 0, @as(c_int, 0) != 0, @as(c_int, 1) != 0) != -@as(c_int, 1);
    if ((@as(c_int, @intFromBool(consp(arg1))) != 0) and (@as(c_int, @intFromBool(consp(arg2))) != 0)) return (@as(c_int, @intFromBool(equal(arg1.*.unnamed_0.unnamed_0.car, arg2.*.unnamed_0.unnamed_0.car))) != 0) and (@as(c_int, @intFromBool(equal(arg1.*.unnamed_0.unnamed_0.cdr, arg2.*.unnamed_0.unnamed_0.cdr))) != 0);
    return eq(arg1, arg2);
}
pub export fn checkarguments(arg_args: [*c]object, arg_min: c_int, arg_max: c_int) [*c]object {
    var args = arg_args;
    _ = &args;
    var min = arg_min;
    _ = &min;
    var max = arg_max;
    _ = &max;
    if (args == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        error2(@as([*c]const u8, @ptrCast(@alignCast(&noargument[@as(usize, @intCast(0))]))));
    }
    args = args.*.unnamed_0.unnamed_0.car;
    if (!listp(args)) {
        @"error"(@as([*c]const u8, @ptrCast(@alignCast(&notalist[@as(usize, @intCast(0))]))), args);
    }
    var length: c_int = listlength(args);
    _ = &length;
    if (length < min) {
        @"error"(@as([*c]const u8, @ptrCast(@alignCast(&toofewargs[@as(usize, @intCast(0))]))), args);
    }
    if (length > max) {
        @"error"(@as([*c]const u8, @ptrCast(@alignCast(&toomanyargs[@as(usize, @intCast(0))]))), args);
    }
    return args;
}
pub export fn add_floats(arg_args: [*c]object, arg_fresult: f32) [*c]object {
    var args = arg_args;
    _ = &args;
    var fresult = arg_fresult;
    _ = &fresult;
    while (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
        _ = &arg;
        fresult = fresult + checkintfloat(arg);
        args = args.*.unnamed_0.unnamed_0.cdr;
    }
    return makefloat(fresult);
}
pub export fn subtract_floats(arg_args: [*c]object, arg_fresult: f32) [*c]object {
    var args = arg_args;
    _ = &args;
    var fresult = arg_fresult;
    _ = &fresult;
    while (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
        _ = &arg;
        fresult = fresult - checkintfloat(arg);
        args = args.*.unnamed_0.unnamed_0.cdr;
    }
    return makefloat(fresult);
}
pub export fn negate(arg_arg: [*c]object) [*c]object {
    var arg = arg_arg;
    _ = &arg;
    if ((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(NUMBER)))) {
        var result: c_int = arg.*.unnamed_0.unnamed_1.unnamed_0.integer;
        _ = &result;
        if (result == (-@as(c_int, 2147483647) - @as(c_int, 1))) return makefloat(@as(f32, @floatFromInt(-result))) else return number(-result);
    } else if ((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(FLOAT)))) return makefloat(-arg.*.unnamed_0.unnamed_1.unnamed_0.single_float) else {
        @"error"(@as([*c]const u8, @ptrCast(@alignCast(&notanumber[@as(usize, @intCast(0))]))), arg);
    }
    return null;
}
pub export fn multiply_floats(arg_args: [*c]object, arg_fresult: f32) [*c]object {
    var args = arg_args;
    _ = &args;
    var fresult = arg_fresult;
    _ = &fresult;
    while (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
        _ = &arg;
        fresult = fresult * checkintfloat(arg);
        args = args.*.unnamed_0.unnamed_0.cdr;
    }
    return makefloat(fresult);
}
pub export fn divide_floats(arg_args: [*c]object, arg_fresult: f32) [*c]object {
    var args = arg_args;
    _ = &args;
    var fresult = arg_fresult;
    _ = &fresult;
    while (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
        _ = &arg;
        var f: f32 = checkintfloat(arg);
        _ = &f;
        if (@as(f64, @floatCast(f)) == 0.0) {
            error2(@as([*c]const u8, @ptrCast(@alignCast(&divisionbyzero[@as(usize, @intCast(0))]))));
        }
        fresult = fresult / f;
        args = args.*.unnamed_0.unnamed_0.cdr;
    }
    return makefloat(fresult);
}
pub export fn remmod(arg_args: [*c]object, arg_mod: bool) [*c]object {
    var args = arg_args;
    _ = &args;
    var mod = arg_mod;
    _ = &mod;
    var arg1: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &arg1;
    var arg2: [*c]object = @as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car;
    _ = &arg2;
    if (((arg1 != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg1.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(NUMBER)))) and ((arg2 != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg2.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(NUMBER))))) {
        var divisor: c_int = arg2.*.unnamed_0.unnamed_1.unnamed_0.integer;
        _ = &divisor;
        if (divisor == @as(c_int, 0)) {
            error2(@as([*c]const u8, @ptrCast(@alignCast(&divisionbyzero[@as(usize, @intCast(0))]))));
        }
        var dividend: c_int = arg1.*.unnamed_0.unnamed_1.unnamed_0.integer;
        _ = &dividend;
        var remainder_1: c_int = @import("std").zig.c_translation.signedRemainder(dividend, divisor);
        _ = &remainder_1;
        if ((@as(c_int, @intFromBool(mod)) != 0) and (@intFromBool(dividend < @as(c_int, 0)) != @intFromBool(divisor < @as(c_int, 0)))) {
            remainder_1 = remainder_1 + divisor;
        }
        return number(remainder_1);
    } else {
        var fdivisor: f32 = checkintfloat(arg2);
        _ = &fdivisor;
        if (@as(f64, @floatCast(fdivisor)) == 0.0) {
            error2(@as([*c]const u8, @ptrCast(@alignCast(&divisionbyzero[@as(usize, @intCast(0))]))));
        }
        var fdividend: f32 = checkintfloat(arg1);
        _ = &fdividend;
        var fremainder: f32 = @as(f32, @floatCast(fmod(@as(f64, @floatCast(fdividend)), @as(f64, @floatCast(fdivisor)))));
        _ = &fremainder;
        if ((@as(c_int, @intFromBool(mod)) != 0) and (@intFromBool(fdividend < @as(f32, @floatFromInt(@as(c_int, 0)))) != @intFromBool(fdivisor < @as(f32, @floatFromInt(@as(c_int, 0)))))) {
            fremainder = fremainder + fdivisor;
        }
        return makefloat(fremainder);
    }
    return null;
}
pub export fn compare(arg_args: [*c]object, arg_lt: bool, arg_gt: bool, arg_eq_1: bool) [*c]object {
    var args = arg_args;
    _ = &args;
    var lt = arg_lt;
    _ = &lt;
    var gt = arg_gt;
    _ = &gt;
    var eq_1 = arg_eq_1;
    _ = &eq_1;
    var arg1: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &arg1;
    args = args.*.unnamed_0.unnamed_0.cdr;
    while (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var arg2: [*c]object = args.*.unnamed_0.unnamed_0.car;
        _ = &arg2;
        if (((arg1 != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg1.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(NUMBER)))) and ((arg2 != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg2.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(NUMBER))))) {
            if (!lt and (arg1.*.unnamed_0.unnamed_1.unnamed_0.integer < arg2.*.unnamed_0.unnamed_1.unnamed_0.integer)) return null;
            if (!eq_1 and (arg1.*.unnamed_0.unnamed_1.unnamed_0.integer == arg2.*.unnamed_0.unnamed_1.unnamed_0.integer)) return null;
            if (!gt and (arg1.*.unnamed_0.unnamed_1.unnamed_0.integer > arg2.*.unnamed_0.unnamed_1.unnamed_0.integer)) return null;
        } else {
            if (!lt and (checkintfloat(arg1) < checkintfloat(arg2))) return null;
            if (!eq_1 and (checkintfloat(arg1) == checkintfloat(arg2))) return null;
            if (!gt and (checkintfloat(arg1) > checkintfloat(arg2))) return null;
        }
        arg1 = arg2;
        args = args.*.unnamed_0.unnamed_0.cdr;
    }
    return tee;
}
pub export fn intpower(arg_base: c_int, arg_exp_1: c_int) c_int {
    var base = arg_base;
    _ = &base;
    var exp_1 = arg_exp_1;
    _ = &exp_1;
    var result: c_int = 1;
    _ = &result;
    while (exp_1 != 0) {
        if ((exp_1 & @as(c_int, 1)) != 0) {
            result = result * base;
        }
        exp_1 = @divTrunc(exp_1, @as(c_int, 2));
        base = base * base;
    }
    return result;
}
pub export fn testargument(arg_args: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var @"test": [*c]object = bsymbol(@as(builtin_t, @bitCast(@as(c_long, EQ))));
    _ = &@"test";
    if (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        if (args.*.unnamed_0.unnamed_0.cdr == @as([*c]struct_sobject, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            error2("unpaired keyword");
        }
        if (isbuiltin(args.*.unnamed_0.unnamed_0.car, @as(builtin_t, @bitCast(@as(c_long, TEST)))) != 0) {
            @"test" = @as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car;
        } else {
            @"error"("unsupported keyword", args.*.unnamed_0.unnamed_0.car);
        }
    }
    return @"test";
}
pub export fn delassoc(arg_key: [*c]object, arg_alist: [*c][*c]object) [*c]object {
    var key = arg_key;
    _ = &key;
    var alist = arg_alist;
    _ = &alist;
    var list: [*c]object = alist.*;
    _ = &list;
    var prev: [*c]object = null;
    _ = &prev;
    while (list != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var pair: [*c]object = list.*.unnamed_0.unnamed_0.car;
        _ = &pair;
        if (eq(key, pair.*.unnamed_0.unnamed_0.car)) {
            if (prev == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
                alist.* = list.*.unnamed_0.unnamed_0.cdr;
            } else {
                prev.*.unnamed_0.unnamed_0.cdr = list.*.unnamed_0.unnamed_0.cdr;
            }
            return key;
        }
        prev = list;
        list = list.*.unnamed_0.unnamed_0.cdr;
    }
    return null;
}
pub export fn nextpower2(arg_n: c_int) c_int {
    var n = arg_n;
    _ = &n;
    n -= 1;
    n |= n >> @intCast(1);
    n |= n >> @intCast(2);
    n |= n >> @intCast(4);
    n |= n >> @intCast(8);
    n |= n >> @intCast(16);
    n += 1;
    return if (n < @as(c_int, 2)) @as(c_int, 2) else n;
}
pub export fn buildarray(arg_n: c_int, arg_s: c_int, arg_def: [*c]object) [*c]object {
    var n = arg_n;
    _ = &n;
    var s = arg_s;
    _ = &s;
    var def = arg_def;
    _ = &def;
    var s2: c_int = s >> @intCast(1);
    _ = &s2;
    if (s2 == @as(c_int, 1)) {
        if (n == @as(c_int, 2)) return cons(def, def) else if (n == @as(c_int, 1)) return cons(def, null) else return null;
    } else if (n >= s2) return cons(buildarray(s2, s2, def), buildarray(n - s2, s2, def)) else return cons(buildarray(n, s2, def), null);
    return null;
}
pub export fn makearray(arg_dims: [*c]object, arg_def: [*c]object, arg_bitp: bool) [*c]object {
    var dims = arg_dims;
    _ = &dims;
    var def = arg_def;
    _ = &def;
    var bitp = arg_bitp;
    _ = &bitp;
    var size: c_int = 1;
    _ = &size;
    var dimensions: [*c]object = dims;
    _ = &dimensions;
    while (dims != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var d: c_int = dims.*.unnamed_0.unnamed_0.car.*.unnamed_0.unnamed_1.unnamed_0.integer;
        _ = &d;
        if (d < @as(c_int, 0)) {
            error2("dimension can't be negative");
        }
        size = size * d;
        dims = dims.*.unnamed_0.unnamed_0.cdr;
    }
    if (bitp) {
        size = @as(c_int, @bitCast(@as(c_uint, @truncate(((@as(c_ulong, @bitCast(@as(c_long, size))) +% (@sizeOf(c_int) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8)))))) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) / (@sizeOf(c_int) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8)))))))));
        dimensions.*.unnamed_0.unnamed_0.car = number(-dimensions.*.unnamed_0.unnamed_0.car.*.unnamed_0.unnamed_1.unnamed_0.integer);
    }
    var ptr: [*c]object = myalloc();
    _ = &ptr;
    ptr.*.unnamed_0.unnamed_1.type = @as(c_uint, @bitCast(ARRAY));
    var tree: [*c]object = null;
    _ = &tree;
    if (size != @as(c_int, 0)) {
        tree = buildarray(size, nextpower2(size), def);
    }
    ptr.*.unnamed_0.unnamed_0.cdr = cons(tree, dimensions);
    return ptr;
}
pub export fn arrayref(arg_array: [*c]object, arg_index_1: c_int, arg_size: c_int) [*c][*c]object {
    var array = arg_array;
    _ = &array;
    var index_1 = arg_index_1;
    _ = &index_1;
    var size = arg_size;
    _ = &size;
    var mask: c_int = nextpower2(size) >> @intCast(1);
    _ = &mask;
    var p: [*c][*c]object = &@as([*c]object, @ptrCast(@alignCast(array.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car;
    _ = &p;
    while (mask != 0) {
        if ((index_1 & mask) == @as(c_int, 0)) {
            p = &p.*.*.unnamed_0.unnamed_0.car;
        } else {
            p = &p.*.*.unnamed_0.unnamed_0.cdr;
        }
        mask = mask >> @intCast(1);
    }
    return p;
}
pub export fn getarray(arg_array: [*c]object, arg_subs: [*c]object, arg_env: [*c]object, arg_bit: [*c]c_int) [*c][*c]object {
    var array = arg_array;
    _ = &array;
    var subs = arg_subs;
    _ = &subs;
    var env = arg_env;
    _ = &env;
    var bit = arg_bit;
    _ = &bit;
    var index_1: c_int = 0;
    _ = &index_1;
    var size: c_int = 1;
    _ = &size;
    var s: c_int = undefined;
    _ = &s;
    bit.* = -@as(c_int, 1);
    var bitp: bool = @as(c_int, 0) != 0;
    _ = &bitp;
    var dims: [*c]object = @as([*c]object, @ptrCast(@alignCast(array.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.cdr;
    _ = &dims;
    while ((dims != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (subs != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))))) {
        var d: c_int = dims.*.unnamed_0.unnamed_0.car.*.unnamed_0.unnamed_1.unnamed_0.integer;
        _ = &d;
        if (d < @as(c_int, 0)) {
            d = -d;
            bitp = @as(c_int, 1) != 0;
        }
        if (env != null) {
            s = checkinteger(eval(subs.*.unnamed_0.unnamed_0.car, env));
        } else {
            s = checkinteger(subs.*.unnamed_0.unnamed_0.car);
        }
        if ((s < @as(c_int, 0)) or (s >= d)) {
            @"error"("subscript out of range", subs.*.unnamed_0.unnamed_0.car);
        }
        size = size * d;
        index_1 = (index_1 * d) + s;
        dims = dims.*.unnamed_0.unnamed_0.cdr;
        subs = subs.*.unnamed_0.unnamed_0.cdr;
    }
    if (dims != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        error2("too few subscripts");
    }
    if (subs != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        error2("too many subscripts");
    }
    if (bitp) {
        size = @as(c_int, @bitCast(@as(c_uint, @truncate(((@as(c_ulong, @bitCast(@as(c_long, size))) +% (@sizeOf(c_int) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8)))))) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) / (@sizeOf(c_int) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8)))))))));
        bit.* = index_1 & (if (@sizeOf(c_int) == @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 4))))) @as(c_int, 31) else @as(c_int, 15));
        index_1 = index_1 >> @intCast(if (@sizeOf(c_int) == @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 4))))) @as(c_int, 5) else @as(c_int, 4));
    }
    return arrayref(array, index_1, size);
}
pub export fn rslice(arg_array: [*c]object, arg_size: c_int, arg_slice: c_int, arg_dims: [*c]object, arg_args: [*c]object) void {
    var array = arg_array;
    _ = &array;
    var size = arg_size;
    _ = &size;
    var slice = arg_slice;
    _ = &slice;
    var dims = arg_dims;
    _ = &dims;
    var args = arg_args;
    _ = &args;
    var d: c_int = dims.*.unnamed_0.unnamed_0.car.*.unnamed_0.unnamed_1.unnamed_0.integer;
    _ = &d;
    {
        var i: c_int = 0;
        _ = &i;
        while (i < d) : (i += 1) {
            var index_1: c_int = (slice * d) + i;
            _ = &index_1;
            if (!consp(args)) {
                error2("initial contents don't match array type");
            }
            if (dims.*.unnamed_0.unnamed_0.cdr == @as([*c]struct_sobject, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
                var p: [*c][*c]object = arrayref(array, index_1, size);
                _ = &p;
                p.* = args.*.unnamed_0.unnamed_0.car;
            } else {
                rslice(array, size, index_1, dims.*.unnamed_0.unnamed_0.cdr, args.*.unnamed_0.unnamed_0.car);
            }
            args = args.*.unnamed_0.unnamed_0.cdr;
        }
    }
}
pub export fn readarray(arg_d: c_int, arg_args: [*c]object) [*c]object {
    var d = arg_d;
    _ = &d;
    var args = arg_args;
    _ = &args;
    var list: [*c]object = args;
    _ = &list;
    var dims: [*c]object = null;
    _ = &dims;
    var head: [*c]object = null;
    _ = &head;
    var size: c_int = 1;
    _ = &size;
    {
        var i: c_int = 0;
        _ = &i;
        while (i < d) : (i += 1) {
            if (!listp(list)) {
                error2("initial contents don't match array type");
            }
            var l: c_int = listlength(list);
            _ = &l;
            if (dims == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
                dims = cons(number(l), null);
                head = dims;
            } else {
                dims.*.unnamed_0.unnamed_0.cdr = cons(number(l), null);
                dims = dims.*.unnamed_0.unnamed_0.cdr;
            }
            size = size * l;
            if (list != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
                list = list.*.unnamed_0.unnamed_0.car;
            }
        }
    }
    var array: [*c]object = makearray(head, null, @as(c_int, 0) != 0);
    _ = &array;
    rslice(array, size, @as(c_int, 0), head, args);
    return array;
}
pub export fn readbitarray(arg_gfun: gfun_t) [*c]object {
    var gfun = arg_gfun;
    _ = &gfun;
    var ch: u8 = @as(u8, @bitCast(@as(i8, @truncate(gfun.?()))));
    _ = &ch;
    var head: [*c]object = null;
    _ = &head;
    var tail: [*c]object = null;
    _ = &tail;
    while (!((((@as(c_int, @bitCast(@as(c_uint, ch))) == @as(c_int, ' ')) or (@as(c_int, @bitCast(@as(c_uint, ch))) == @as(c_int, '\n'))) or (@as(c_int, @bitCast(@as(c_uint, ch))) == @as(c_int, '\r'))) or (@as(c_int, @bitCast(@as(c_uint, ch))) == @as(c_int, '\t'))) and !(((((@as(c_int, @bitCast(@as(c_uint, ch))) == @as(c_int, ')')) or (@as(c_int, @bitCast(@as(c_uint, ch))) == @as(c_int, '('))) or (@as(c_int, @bitCast(@as(c_uint, ch))) == @as(c_int, '"'))) or (@as(c_int, @bitCast(@as(c_uint, ch))) == @as(c_int, '#'))) or (@as(c_int, @bitCast(@as(c_uint, ch))) == @as(c_int, '\'')))) {
        if ((@as(c_int, @bitCast(@as(c_uint, ch))) != @as(c_int, '0')) and (@as(c_int, @bitCast(@as(c_uint, ch))) != @as(c_int, '1'))) {
            error2("illegal character in bit array");
        }
        var cell: [*c]object = cons(number(@as(c_int, @bitCast(@as(c_uint, ch))) - @as(c_int, '0')), null);
        _ = &cell;
        if (head == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            head = cell;
        } else {
            tail.*.unnamed_0.unnamed_0.cdr = cell;
        }
        tail = cell;
        ch = @as(u8, @bitCast(@as(i8, @truncate(gfun.?()))));
    }
    LastChar = ch;
    var size: c_int = listlength(head);
    _ = &size;
    var array: [*c]object = makearray(cons(number(size), null), number(@as(c_int, 0)), @as(c_int, 1) != 0);
    _ = &array;
    size = @as(c_int, @bitCast(@as(c_uint, @truncate(((@as(c_ulong, @bitCast(@as(c_long, size))) +% (@sizeOf(c_int) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8)))))) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) / (@sizeOf(c_int) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8)))))))));
    var index_1: c_int = 0;
    _ = &index_1;
    while (head != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var loc: [*c][*c]object = arrayref(array, index_1 >> @intCast(if (@sizeOf(c_int) == @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 4))))) @as(c_int, 5) else @as(c_int, 4)), size);
        _ = &loc;
        var bit: c_int = index_1 & (if (@sizeOf(c_int) == @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 4))))) @as(c_int, 31) else @as(c_int, 15));
        _ = &bit;
        loc.* = number((loc.*.*.unnamed_0.unnamed_1.unnamed_0.integer & ~(@as(c_int, 1) << @intCast(bit))) | (head.*.unnamed_0.unnamed_0.car.*.unnamed_0.unnamed_1.unnamed_0.integer << @intCast(bit)));
        index_1 += 1;
        head = head.*.unnamed_0.unnamed_0.cdr;
    }
    return array;
}
pub export fn pslice(arg_array: [*c]object, arg_size: c_int, arg_slice: c_int, arg_dims: [*c]object, arg_pfun: pfun_t, arg_bitp: bool) void {
    var array = arg_array;
    _ = &array;
    var size = arg_size;
    _ = &size;
    var slice = arg_slice;
    _ = &slice;
    var dims = arg_dims;
    _ = &dims;
    var pfun = arg_pfun;
    _ = &pfun;
    var bitp = arg_bitp;
    _ = &bitp;
    var spaces: bool = @as(c_int, 1) != 0;
    _ = &spaces;
    if (slice == -@as(c_int, 1)) {
        spaces = @as(c_int, 0) != 0;
        slice = 0;
    }
    var d: c_int = dims.*.unnamed_0.unnamed_0.car.*.unnamed_0.unnamed_1.unnamed_0.integer;
    _ = &d;
    if (d < @as(c_int, 0)) {
        d = -d;
    }
    {
        var i: c_int = 0;
        _ = &i;
        while (i < d) : (i += 1) {
            if ((i != 0) and (@as(c_int, @intFromBool(spaces)) != 0)) {
                pfun.?(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, ' '))))));
            }
            var index_1: c_int = (slice * d) + i;
            _ = &index_1;
            if (dims.*.unnamed_0.unnamed_0.cdr == @as([*c]struct_sobject, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
                if (bitp) {
                    pint((arrayref(array, index_1 >> @intCast(if (@sizeOf(c_int) == @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 4))))) @as(c_int, 5) else @as(c_int, 4)), size).*.*.unnamed_0.unnamed_1.unnamed_0.integer >> @intCast(index_1 & (if (@sizeOf(c_int) == @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 4))))) @as(c_int, 31) else @as(c_int, 15)))) & @as(c_int, 1), pfun);
                } else {
                    printobject(arrayref(array, index_1, size).*, pfun);
                }
            } else {
                pfun.?(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '('))))));
                pslice(array, size, index_1, dims.*.unnamed_0.unnamed_0.cdr, pfun, bitp);
                pfun.?(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, ')'))))));
            }
            yield_loop();
        }
    }
}
pub export fn printarray(arg_array: [*c]object, arg_pfun: pfun_t) void {
    var array = arg_array;
    _ = &array;
    var pfun = arg_pfun;
    _ = &pfun;
    var dimensions: [*c]object = @as([*c]object, @ptrCast(@alignCast(array.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.cdr;
    _ = &dimensions;
    var dims: [*c]object = dimensions;
    _ = &dims;
    var bitp: bool = @as(c_int, 0) != 0;
    _ = &bitp;
    var size: c_int = 1;
    _ = &size;
    var n: c_int = 0;
    _ = &n;
    while (dims != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var d: c_int = dims.*.unnamed_0.unnamed_0.car.*.unnamed_0.unnamed_1.unnamed_0.integer;
        _ = &d;
        if (d < @as(c_int, 0)) {
            bitp = @as(c_int, 1) != 0;
            d = -d;
        }
        size = size * d;
        dims = dims.*.unnamed_0.unnamed_0.cdr;
        n += 1;
    }
    if (bitp) {
        size = @as(c_int, @bitCast(@as(c_uint, @truncate(((@as(c_ulong, @bitCast(@as(c_long, size))) +% (@sizeOf(c_int) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8)))))) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) / (@sizeOf(c_int) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8)))))))));
    }
    pfun.?(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '#'))))));
    if ((n == @as(c_int, 1)) and (@as(c_int, @intFromBool(bitp)) != 0)) {
        pfun.?(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '*'))))));
        pslice(array, size, -@as(c_int, 1), dimensions, pfun, bitp);
    } else {
        if (n > @as(c_int, 1)) {
            pint(n, pfun);
            pfun.?(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 'A'))))));
        }
        pfun.?(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '('))))));
        pslice(array, size, @as(c_int, 0), dimensions, pfun, bitp);
        pfun.?(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, ')'))))));
    }
}
pub export fn startstring() [*c]object {
    var string: [*c]object = newstring();
    _ = &string;
    GlobalString = string;
    GlobalStringTail = string;
    return string;
}
pub export fn princtostring(arg_arg: [*c]object) [*c]object {
    var arg = arg_arg;
    _ = &arg;
    var obj: [*c]object = startstring();
    _ = &obj;
    prin1object(arg, &pstr);
    return obj;
}
pub export fn buildstring(arg_ch: u8, arg_tail: [*c][*c]object) void {
    var ch = arg_ch;
    _ = &ch;
    var tail = arg_tail;
    _ = &tail;
    var cell: [*c]object = undefined;
    _ = &cell;
    if (tail.*.*.unnamed_0.unnamed_0.cdr == @as([*c]struct_sobject, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        cell = myalloc();
        tail.*.*.unnamed_0.unnamed_0.cdr = cell;
    } else if ((tail.*.*.unnamed_0.unnamed_1.unnamed_0.chars & @as(chars_t, @bitCast(@as(c_long, @as(c_int, 16777215))))) == @as(chars_t, @bitCast(@as(c_long, @as(c_int, 0))))) {
        tail.*.*.unnamed_0.unnamed_1.unnamed_0.chars |= @as(chars_t, @bitCast(@as(c_long, @as(c_int, @bitCast(@as(c_uint, ch))) << @intCast(16))));
        return;
    } else if ((tail.*.*.unnamed_0.unnamed_1.unnamed_0.chars & @as(chars_t, @bitCast(@as(c_long, @as(c_int, 65535))))) == @as(chars_t, @bitCast(@as(c_long, @as(c_int, 0))))) {
        tail.*.*.unnamed_0.unnamed_1.unnamed_0.chars |= @as(chars_t, @bitCast(@as(c_long, @as(c_int, @bitCast(@as(c_uint, ch))) << @intCast(8))));
        return;
    } else if ((tail.*.*.unnamed_0.unnamed_1.unnamed_0.chars & @as(chars_t, @bitCast(@as(c_long, @as(c_int, 255))))) == @as(chars_t, @bitCast(@as(c_long, @as(c_int, 0))))) {
        tail.*.*.unnamed_0.unnamed_1.unnamed_0.chars |= @as(chars_t, @bitCast(@as(c_ulong, ch)));
        return;
    } else {
        cell = myalloc();
        tail.*.*.unnamed_0.unnamed_0.car = cell;
    }
    cell.*.unnamed_0.unnamed_0.car = null;
    cell.*.unnamed_0.unnamed_1.unnamed_0.chars = @as(chars_t, @bitCast(@as(c_long, @as(c_int, @bitCast(@as(c_uint, ch))) << @intCast(24))));
    tail.* = cell;
}
pub export fn copystring(arg_arg: [*c]object) [*c]object {
    var arg = arg_arg;
    _ = &arg;
    var obj: [*c]object = newstring();
    _ = &obj;
    var ptr: [*c]object = obj;
    _ = &ptr;
    arg = arg.*.unnamed_0.unnamed_0.cdr;
    while (arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var cell: [*c]object = myalloc();
        _ = &cell;
        cell.*.unnamed_0.unnamed_0.car = null;
        if (obj.*.unnamed_0.unnamed_0.cdr == @as([*c]struct_sobject, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            obj.*.unnamed_0.unnamed_0.cdr = cell;
        } else {
            ptr.*.unnamed_0.unnamed_0.car = cell;
        }
        ptr = cell;
        ptr.*.unnamed_0.unnamed_1.unnamed_0.chars = arg.*.unnamed_0.unnamed_1.unnamed_0.chars;
        arg = arg.*.unnamed_0.unnamed_0.car;
    }
    return obj;
}
pub export fn readstring(arg_delim: u8, arg_esc_1: bool, arg_gfun: gfun_t) [*c]object {
    var delim = arg_delim;
    _ = &delim;
    var esc_1 = arg_esc_1;
    _ = &esc_1;
    var gfun = arg_gfun;
    _ = &gfun;
    var obj: [*c]object = newstring();
    _ = &obj;
    var tail: [*c]object = obj;
    _ = &tail;
    var ch: c_int = gfun.?();
    _ = &ch;
    if (ch == -@as(c_int, 1)) return null;
    while ((ch != @as(c_int, @bitCast(@as(c_uint, delim)))) and (ch != -@as(c_int, 1))) {
        if ((@as(c_int, @intFromBool(esc_1)) != 0) and (ch == @as(c_int, '\\'))) {
            ch = gfun.?();
        }
        buildstring(@as(u8, @bitCast(@as(i8, @truncate(ch)))), &tail);
        ch = gfun.?();
    }
    return obj;
}
pub export fn stringlength(arg_form: [*c]object) c_int {
    var form = arg_form;
    _ = &form;
    var length: c_int = 0;
    _ = &length;
    form = form.*.unnamed_0.unnamed_0.cdr;
    while (form != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var chars: c_int = @as(c_int, @bitCast(@as(c_uint, @truncate(form.*.unnamed_0.unnamed_1.unnamed_0.chars))));
        _ = &chars;
        {
            var i: c_int = @as(c_int, @bitCast(@as(c_uint, @truncate((@sizeOf(c_int) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8))))))));
            _ = &i;
            while (i >= @as(c_int, 0)) : (i = i - @as(c_int, 8)) {
                if (((chars >> @intCast(i)) & @as(c_int, 255)) != 0) {
                    length += 1;
                }
            }
        }
        form = form.*.unnamed_0.unnamed_0.car;
    }
    return length;
}
pub export fn getcharplace(arg_string: [*c]object, arg_n: c_int, arg_shift: [*c]c_int) [*c][*c]object {
    var string = arg_string;
    _ = &string;
    var n = arg_n;
    _ = &n;
    var shift = arg_shift;
    _ = &shift;
    var arg: [*c][*c]object = &string.*.unnamed_0.unnamed_0.cdr;
    _ = &arg;
    var top: c_int = undefined;
    _ = &top;
    if (@sizeOf(c_int) == @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 4))))) {
        top = n >> @intCast(2);
        shift.* = @as(c_int, 3) - (n & @as(c_int, 3));
    } else {
        top = n >> @intCast(1);
        shift.* = @as(c_int, 1) - (n & @as(c_int, 1));
    }
    shift.* = -(shift.* + @as(c_int, 2));
    {
        var i: c_int = 0;
        _ = &i;
        while (i < top) : (i += 1) {
            if (arg.* == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) break;
            arg = &arg.*.*.unnamed_0.unnamed_0.car;
        }
    }
    return arg;
}
pub export fn gstr() c_int {
    if (LastChar != 0) {
        var temp: u8 = LastChar;
        _ = &temp;
        LastChar = 0;
        return @as(c_int, @bitCast(@as(c_uint, temp)));
    }
    var c: u8 = @as(u8, @bitCast(nthchar(GlobalString, blk: {
        const ref = &GlobalStringIndex;
        const tmp = ref.*;
        ref.* += 1;
        break :blk tmp;
    })));
    _ = &c;
    if (@as(c_int, @bitCast(@as(c_uint, c))) != @as(c_int, 0)) return @as(c_int, @bitCast(@as(c_uint, c)));
    return '\n';
}
pub export fn documentation(arg_arg: [*c]object, arg_env: [*c]object) [*c]object {
    var arg = arg_arg;
    _ = &arg;
    var env = arg_env;
    _ = &env;
    if (arg == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return null;
    if (!((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(SYMBOL))))) {
        @"error"(@as([*c]const u8, @ptrCast(@alignCast(&notasymbol[@as(usize, @intCast(0))]))), arg);
    }
    var pair: [*c]object = findpair(arg, env);
    _ = &pair;
    if (pair != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var val: [*c]object = pair.*.unnamed_0.unnamed_0.cdr;
        _ = &val;
        if ((((@as(c_int, @intFromBool(listp(val))) != 0) and (val.*.unnamed_0.unnamed_0.car.*.unnamed_0.unnamed_1.unnamed_0.name == sym(@as(builtin_t, @bitCast(@as(c_long, LAMBDA)))))) and (val.*.unnamed_0.unnamed_0.cdr != @as([*c]struct_sobject, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))))) and (@as([*c]object, @ptrCast(@alignCast(val.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.cdr != @as([*c]struct_sobject, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))))) {
            if ((@as([*c]object, @ptrCast(@alignCast(@as([*c]object, @ptrCast(@alignCast(val.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car != @as([*c]struct_sobject, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (@as([*c]object, @ptrCast(@alignCast(@as([*c]object, @ptrCast(@alignCast(val.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(STRING)))) return @as([*c]object, @ptrCast(@alignCast(@as([*c]object, @ptrCast(@alignCast(val.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car;
        }
    }
    var docname: symbol_t = arg.*.unnamed_0.unnamed_1.unnamed_0.name;
    _ = &docname;
    if (!builtinp(docname)) return null;
    var docstring: [*c]u8 = lookupdoc(builtin(docname));
    _ = &docstring;
    if (docstring == @as([*c]u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return null;
    var obj: [*c]object = startstring();
    _ = &obj;
    pfstring(docstring, &pstr);
    return obj;
}
pub export fn apropos(arg_arg: [*c]object, arg_print: bool) [*c]object {
    var arg = arg_arg;
    _ = &arg;
    var print = arg_print;
    _ = &print;
    var buf: [17]u8 = undefined;
    _ = &buf;
    var buf2: [33]u8 = undefined;
    _ = &buf2;
    var part: [*c]u8 = cstring(princtostring(arg), @as([*c]u8, @ptrCast(@alignCast(&buf[@as(usize, @intCast(0))]))), @as(c_int, 17));
    _ = &part;
    var result: [*c]object = cons(null, null);
    _ = &result;
    var ptr: [*c]object = result;
    _ = &ptr;
    var globals: [*c]object = GlobalEnv;
    _ = &globals;
    while (globals != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var pair: [*c]object = globals.*.unnamed_0.unnamed_0.car;
        _ = &pair;
        var @"var": [*c]object = pair.*.unnamed_0.unnamed_0.car;
        _ = &@"var";
        var val: [*c]object = pair.*.unnamed_0.unnamed_0.cdr;
        _ = &val;
        var full: [*c]u8 = cstring(princtostring(@"var"), @as([*c]u8, @ptrCast(@alignCast(&buf2[@as(usize, @intCast(0))]))), @as(c_int, 33));
        _ = &full;
        if (strstr(full, part) != @as([*c]u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            if (print) {
                printsymbol(@"var", &pserial);
                pserial(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, ' '))))));
                pserial(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '('))))));
                if ((@as(c_int, @intFromBool(consp(val))) != 0) and (isbuiltin(val.*.unnamed_0.unnamed_0.car, @as(builtin_t, @bitCast(@as(c_long, LAMBDA)))) != 0)) {
                    pfstring("user function", &pserial);
                } else if ((@as(c_int, @intFromBool(consp(val))) != 0) and (val.*.unnamed_0.unnamed_0.car.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(CODE)))) {
                    pfstring("code", &pserial);
                } else {
                    pfstring("user symbol", &pserial);
                }
                pserial(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, ')'))))));
                pln(&pserial);
            } else {
                ptr.*.unnamed_0.unnamed_0.cdr = cons(@"var", null);
                ptr = ptr.*.unnamed_0.unnamed_0.cdr;
            }
        }
        globals = globals.*.unnamed_0.unnamed_0.cdr;
        yield_loop();
    }
    var entries: c_int = @as(c_int, @bitCast(tablesize(@as(c_int, 0)) +% tablesize(@as(c_int, 1))));
    _ = &entries;
    {
        var i: c_int = 0;
        _ = &i;
        while (i < entries) : (i += 1) {
            if (findsubstring(part, @as(builtin_t, @bitCast(@as(c_long, i))))) {
                if (print) {
                    var fntype_1: u8 = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, @bitCast(@as(c_uint, getminmax(@as(builtin_t, @bitCast(@as(c_ulong, @as(u16, @bitCast(@as(c_short, @truncate(i))))))))))) >> @intCast(6)))));
                    _ = &fntype_1;
                    pbuiltin(@as(builtin_t, @bitCast(@as(c_long, i))), &pserial);
                    pserial(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, ' '))))));
                    pserial(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '('))))));
                    if (@as(c_int, @bitCast(@as(c_uint, fntype_1))) == FUNCTIONS) {
                        pfstring("function", &pserial);
                    } else if ((@as(c_int, @bitCast(@as(c_uint, fntype_1))) == SPECIAL_FORMS) or (@as(c_int, @bitCast(@as(c_uint, fntype_1))) == TAIL_FORMS)) {
                        pfstring("special form", &pserial);
                    } else {
                        pfstring("symbol/keyword", &pserial);
                    }
                    pserial(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, ')'))))));
                    pln(&pserial);
                } else {
                    ptr.*.unnamed_0.unnamed_0.cdr = cons(bsymbol(@as(builtin_t, @bitCast(@as(c_long, i)))), null);
                    ptr = ptr.*.unnamed_0.unnamed_0.cdr;
                }
            }
            yield_loop();
        }
    }
    return result.*.unnamed_0.unnamed_0.cdr;
}
pub export fn iptostring(arg_ip: u32) [*c]object {
    var ip = arg_ip;
    _ = &ip;
    const union_unnamed_10 = extern union {
        data2: u32,
        u8: [4]u8,
    };
    _ = &union_unnamed_10;
    var u: union_unnamed_10 = undefined;
    _ = &u;
    var obj: [*c]object = startstring();
    _ = &obj;
    u.data2 = ip;
    {
        var i: c_int = 0;
        _ = &i;
        while (i < @as(c_int, 4)) : (i += 1) {
            if (i != 0) {
                pstr(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '.'))))));
            }
            pintbase(@as(u32, @bitCast(@as(c_uint, u.u8[@as(c_uint, @intCast(i))]))), @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 10))))), &pstr);
        }
    }
    return obj;
}
pub export fn ipstring(arg_form: [*c]object) u32 {
    var form = arg_form;
    _ = &form;
    form = checkstring(form).*.unnamed_0.unnamed_0.cdr;
    var p: c_int = 0;
    _ = &p;
    const union_unnamed_11 = extern union {
        ipaddress: u32,
        ipbytes: [4]u8,
    };
    _ = &union_unnamed_11;
    var u: union_unnamed_11 = undefined;
    _ = &u;
    u.ipaddress = 0;
    while (form != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var chars: c_int = form.*.unnamed_0.unnamed_1.unnamed_0.integer;
        _ = &chars;
        {
            var i: c_int = @as(c_int, @bitCast(@as(c_uint, @truncate((@sizeOf(c_int) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8))))))));
            _ = &i;
            while (i >= @as(c_int, 0)) : (i = i - @as(c_int, 8)) {
                var ch: u8 = @as(u8, @bitCast(@as(i8, @truncate((chars >> @intCast(i)) & @as(c_int, 255)))));
                _ = &ch;
                if (ch != 0) {
                    if (@as(c_int, @bitCast(@as(c_uint, ch))) == @as(c_int, '.')) {
                        p += 1;
                        if (p > @as(c_int, 3)) {
                            error2("illegal IP address");
                        }
                    } else {
                        u.ipbytes[@as(c_uint, @intCast(p))] = @as(u8, @bitCast(@as(i8, @truncate(((@as(c_int, @bitCast(@as(c_uint, u.ipbytes[@as(c_uint, @intCast(p))]))) * @as(c_int, 10)) + @as(c_int, @bitCast(@as(c_uint, ch)))) - @as(c_int, '0')))));
                    }
                }
            }
        }
        form = form.*.unnamed_0.unnamed_0.car;
    }
    return u.ipaddress;
}
pub export fn value(arg_n: symbol_t, arg_env: [*c]object) [*c]object {
    var n = arg_n;
    _ = &n;
    var env = arg_env;
    _ = &env;
    while (env != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var pair: [*c]object = env.*.unnamed_0.unnamed_0.car;
        _ = &pair;
        if ((pair != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (pair.*.unnamed_0.unnamed_0.car.*.unnamed_0.unnamed_1.unnamed_0.name == n)) return pair;
        env = env.*.unnamed_0.unnamed_0.cdr;
    }
    return null;
}
pub export fn boundp(arg_var: [*c]object, arg_env: [*c]object) bool {
    var @"var" = arg_var;
    _ = &@"var";
    var env = arg_env;
    _ = &env;
    if (!((@"var" != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (@"var".*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(SYMBOL))))) {
        @"error"(@as([*c]const u8, @ptrCast(@alignCast(&notasymbol[@as(usize, @intCast(0))]))), @"var");
    }
    return findpair(@"var", env) != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))));
}
pub export fn findvalue(arg_var: [*c]object, arg_env: [*c]object) [*c]object {
    var @"var" = arg_var;
    _ = &@"var";
    var env = arg_env;
    _ = &env;
    var pair: [*c]object = findpair(@"var", env);
    _ = &pair;
    if (pair == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        @"error"("unknown variable", @"var");
    }
    return pair;
}
pub export fn closure(arg_tc: c_int, arg_name: symbol_t, arg_function: [*c]object, arg_args: [*c]object, arg_env: [*c][*c]object) [*c]object {
    var tc = arg_tc;
    _ = &tc;
    var name = arg_name;
    _ = &name;
    var function = arg_function;
    _ = &function;
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    var state: [*c]object = function.*.unnamed_0.unnamed_0.car;
    _ = &state;
    function = function.*.unnamed_0.unnamed_0.cdr;
    var trace_1: c_int = tracing(name);
    _ = &trace_1;
    if (trace_1 != 0) {
        indent(@as(u8, @bitCast(@as(u8, @truncate(TraceDepth[@as(c_uint, @intCast(trace_1 - @as(c_int, 1)))] << @intCast(1))))), @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, ' '))))), &pserial);
        pint(@as(c_int, @bitCast(blk: {
            const ref = &TraceDepth[@as(c_uint, @intCast(trace_1 - @as(c_int, 1)))];
            const tmp = ref.*;
            ref.* +%= 1;
            break :blk tmp;
        })), &pserial);
        pserial(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, ':'))))));
        pserial(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, ' '))))));
        pserial(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '('))))));
        printsymbol(symbol(name), &pserial);
    }
    var params: [*c]object = function.*.unnamed_0.unnamed_0.car;
    _ = &params;
    if (!listp(params)) {
        errorsym(name, @as([*c]const u8, @ptrCast(@alignCast(&notalist[@as(usize, @intCast(0))]))), params);
    }
    function = function.*.unnamed_0.unnamed_0.cdr;
    if (tc != 0) {
        if ((env.* != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (env.*.*.unnamed_0.unnamed_0.car == @as([*c]struct_sobject, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))))) {
            _ = blk: {
                const tmp = env.*.*.unnamed_0.unnamed_0.cdr;
                env.* = tmp;
                break :blk tmp;
            };
            while ((env.* != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (env.*.*.unnamed_0.unnamed_0.car != @as([*c]struct_sobject, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))))) {
                _ = blk: {
                    const tmp = env.*.*.unnamed_0.unnamed_0.cdr;
                    env.* = tmp;
                    break :blk tmp;
                };
            }
        } else {
            _ = blk: {
                const tmp = cons(null, env.*);
                env.* = tmp;
                break :blk tmp;
            };
        }
    }
    while (consp(state)) {
        var pair: [*c]object = state.*.unnamed_0.unnamed_0.car;
        _ = &pair;
        _ = blk: {
            const tmp = cons(pair, env.*);
            env.* = tmp;
            break :blk tmp;
        };
        state = state.*.unnamed_0.unnamed_0.cdr;
    }
    var optional: bool = @as(c_int, 0) != 0;
    _ = &optional;
    while (params != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var value_1: [*c]object = undefined;
        _ = &value_1;
        var @"var": [*c]object = params.*.unnamed_0.unnamed_0.car;
        _ = &@"var";
        if (isbuiltin(@"var", @as(builtin_t, @bitCast(@as(c_long, OPTIONAL)))) != 0) {
            optional = @as(c_int, 1) != 0;
        } else {
            if (consp(@"var")) {
                if (!optional) {
                    errorsym(name, "invalid default value", @"var");
                }
                if (args == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
                    value_1 = eval(@as([*c]object, @ptrCast(@alignCast(@"var".*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car, env.*);
                } else {
                    value_1 = args.*.unnamed_0.unnamed_0.car;
                    args = args.*.unnamed_0.unnamed_0.cdr;
                }
                @"var" = @"var".*.unnamed_0.unnamed_0.car;
                if (!((@"var" != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (@"var".*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(SYMBOL))))) {
                    errorsym(name, "illegal optional parameter", @"var");
                }
            } else if (!((@"var" != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (@"var".*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(SYMBOL))))) {
                errorsym(name, "illegal function parameter", @"var");
            } else if (isbuiltin(@"var", @as(builtin_t, @bitCast(@as(c_long, AMPREST)))) != 0) {
                params = params.*.unnamed_0.unnamed_0.cdr;
                @"var" = params.*.unnamed_0.unnamed_0.car;
                value_1 = args;
                args = null;
            } else {
                if (args == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
                    if (optional) {
                        value_1 = null;
                    } else {
                        errorsym2(name, @as([*c]const u8, @ptrCast(@alignCast(&toofewargs[@as(usize, @intCast(0))]))));
                    }
                } else {
                    value_1 = args.*.unnamed_0.unnamed_0.car;
                    args = args.*.unnamed_0.unnamed_0.cdr;
                }
            }
            _ = blk: {
                const tmp = cons(cons(@"var", value_1), env.*);
                env.* = tmp;
                break :blk tmp;
            };
            if (trace_1 != 0) {
                pserial(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, ' '))))));
                printobject(value_1, &pserial);
            }
        }
        params = params.*.unnamed_0.unnamed_0.cdr;
    }
    if (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        errorsym2(name, @as([*c]const u8, @ptrCast(@alignCast(&toomanyargs[@as(usize, @intCast(0))]))));
    }
    if (trace_1 != 0) {
        pserial(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, ')'))))));
        pln(&pserial);
    }
    if (tc != 0) {
        _ = blk: {
            const tmp = cons(null, env.*);
            env.* = tmp;
            break :blk tmp;
        };
    }
    return tf_progn(function, env.*);
}
pub export fn apply(arg_function: [*c]object, arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var function = arg_function;
    _ = &function;
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    if ((function != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (function.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(SYMBOL)))) {
        var fname: builtin_t = builtin(function.*.unnamed_0.unnamed_1.unnamed_0.name);
        _ = &fname;
        if ((fname < @as(builtin_t, @bitCast(@as(c_long, @as(c_int, 198967296))))) and ((@as(c_int, @bitCast(@as(c_uint, getminmax(@as(builtin_t, @bitCast(@as(c_ulong, @as(u16, @bitCast(@as(c_ushort, @truncate(fname))))))))))) >> @intCast(6)) == FUNCTIONS)) {
            Context = fname;
            checkargs(args);
            return @as(fn_ptr_type, @ptrFromInt(lookupfn(fname))).?(args, env);
        } else {
            function = eval(function, env);
        }
    }
    if ((@as(c_int, @intFromBool(consp(function))) != 0) and (isbuiltin(function.*.unnamed_0.unnamed_0.car, @as(builtin_t, @bitCast(@as(c_long, LAMBDA)))) != 0)) {
        var result: [*c]object = closure(@as(c_int, 0), sym(@as(builtin_t, @bitCast(@as(c_long, NIL)))), function, args, &env);
        _ = &result;
        return eval(result, env);
    }
    if ((@as(c_int, @intFromBool(consp(function))) != 0) and (isbuiltin(function.*.unnamed_0.unnamed_0.car, @as(builtin_t, @bitCast(@as(c_long, CLOSURE)))) != 0)) {
        function = function.*.unnamed_0.unnamed_0.cdr;
        var result: [*c]object = closure(@as(c_int, 0), sym(@as(builtin_t, @bitCast(@as(c_long, NIL)))), function, args, &env);
        _ = &result;
        return eval(result, env);
    }
    @"error"(@as([*c]const u8, @ptrCast(@alignCast(&illegalfn[@as(usize, @intCast(0))]))), function);
    return null;
}
pub export fn place(arg_args: [*c]object, arg_env: [*c]object, arg_bit: [*c]c_int) [*c][*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    var bit = arg_bit;
    _ = &bit;
    bit.* = -@as(c_int, 1);
    if (!consp(args)) return &findvalue(args, env).*.unnamed_0.unnamed_0.cdr;
    var function: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &function;
    if ((function != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (function.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(SYMBOL)))) {
        var sname: symbol_t = function.*.unnamed_0.unnamed_1.unnamed_0.name;
        _ = &sname;
        if ((sname == sym(@as(builtin_t, @bitCast(@as(c_long, CAR))))) or (sname == sym(@as(builtin_t, @bitCast(@as(c_long, FIRST)))))) {
            var value_1: [*c]object = eval(@as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car, env);
            _ = &value_1;
            if (!listp(value_1)) {
                @"error"(@as([*c]const u8, @ptrCast(@alignCast(&canttakecar[@as(usize, @intCast(0))]))), value_1);
            }
            return &value_1.*.unnamed_0.unnamed_0.car;
        }
        if ((sname == sym(@as(builtin_t, @bitCast(@as(c_long, CDR))))) or (sname == sym(@as(builtin_t, @bitCast(@as(c_long, REST)))))) {
            var value_1: [*c]object = eval(@as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car, env);
            _ = &value_1;
            if (!listp(value_1)) {
                @"error"(@as([*c]const u8, @ptrCast(@alignCast(&canttakecdr[@as(usize, @intCast(0))]))), value_1);
            }
            return &value_1.*.unnamed_0.unnamed_0.cdr;
        }
        if (sname == sym(@as(builtin_t, @bitCast(@as(c_long, NTH))))) {
            var index_1: c_int = checkinteger(eval(@as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car, env));
            _ = &index_1;
            var list: [*c]object = eval(@as([*c]object, @ptrCast(@alignCast(@as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car, env);
            _ = &list;
            if (!consp(list)) {
                Context = @as(builtin_t, @bitCast(@as(c_long, NTH)));
                @"error"("second argument is not a list", list);
            }
            var i: c_int = index_1;
            _ = &i;
            while (i > @as(c_int, 0)) {
                list = list.*.unnamed_0.unnamed_0.cdr;
                if (list == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
                    Context = @as(builtin_t, @bitCast(@as(c_long, NTH)));
                    @"error"(@as([*c]const u8, @ptrCast(@alignCast(&indexrange[@as(usize, @intCast(0))]))), number(index_1));
                }
                i -= 1;
            }
            return &list.*.unnamed_0.unnamed_0.car;
        }
        if (sname == sym(@as(builtin_t, @bitCast(@as(c_long, CHAR))))) {
            var index_1: c_int = checkinteger(eval(@as([*c]object, @ptrCast(@alignCast(@as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car, env));
            _ = &index_1;
            var string: [*c]object = checkstring(eval(@as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car, env));
            _ = &string;
            var loc: [*c][*c]object = getcharplace(string, index_1, bit);
            _ = &loc;
            if ((loc.* == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) or (((loc.*.*.unnamed_0.unnamed_1.unnamed_0.chars >> @intCast((-bit.* - @as(c_int, 2)) << @intCast(3))) & @as(chars_t, @bitCast(@as(c_long, @as(c_int, 255))))) == @as(chars_t, @bitCast(@as(c_long, @as(c_int, 0)))))) {
                Context = @as(builtin_t, @bitCast(@as(c_long, CHAR)));
                @"error"(@as([*c]const u8, @ptrCast(@alignCast(&indexrange[@as(usize, @intCast(0))]))), number(index_1));
            }
            return loc;
        }
        if (sname == sym(@as(builtin_t, @bitCast(@as(c_long, AREF))))) {
            var array: [*c]object = eval(@as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car, env);
            _ = &array;
            if (!((array != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (array.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(ARRAY))))) {
                Context = @as(builtin_t, @bitCast(@as(c_long, AREF)));
                @"error"("first argument is not an array", array);
            }
            return getarray(array, @as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.cdr, env, bit);
        }
    }
    error2("illegal place");
    return null;
}
pub export fn carx(arg_arg: [*c]object) [*c]object {
    var arg = arg_arg;
    _ = &arg;
    if (!listp(arg)) {
        @"error"(@as([*c]const u8, @ptrCast(@alignCast(&canttakecar[@as(usize, @intCast(0))]))), arg);
    }
    if (arg == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return null;
    return arg.*.unnamed_0.unnamed_0.car;
}
pub export fn cdrx(arg_arg: [*c]object) [*c]object {
    var arg = arg_arg;
    _ = &arg;
    if (!listp(arg)) {
        @"error"(@as([*c]const u8, @ptrCast(@alignCast(&canttakecdr[@as(usize, @intCast(0))]))), arg);
    }
    if (arg == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return null;
    return arg.*.unnamed_0.unnamed_0.cdr;
}
pub export fn cxxxr(arg_args: [*c]object, arg_pattern: u8) [*c]object {
    var args = arg_args;
    _ = &args;
    var pattern = arg_pattern;
    _ = &pattern;
    var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &arg;
    while (@as(c_int, @bitCast(@as(c_uint, pattern))) != @as(c_int, 1)) {
        if ((@as(c_int, @bitCast(@as(c_uint, pattern))) & @as(c_int, 1)) == @as(c_int, 0)) {
            arg = carx(arg);
        } else {
            arg = cdrx(arg);
        }
        pattern = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, @bitCast(@as(c_uint, pattern))) >> @intCast(1)))));
    }
    return arg;
}
pub export fn mapcl(arg_args: [*c]object, arg_env: [*c]object, arg_mapl: bool) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    var mapl = arg_mapl;
    _ = &mapl;
    var function: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &function;
    args = args.*.unnamed_0.unnamed_0.cdr;
    var result: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &result;
    _ = blk: {
        const tmp = cons(result, GCStack);
        GCStack = tmp;
        break :blk tmp;
    };
    var params: [*c]object = cons(null, null);
    _ = &params;
    _ = blk: {
        const tmp = cons(params, GCStack);
        GCStack = tmp;
        break :blk tmp;
    };
    while (true) {
        var tailp: [*c]object = params;
        _ = &tailp;
        var lists: [*c]object = args;
        _ = &lists;
        while (lists != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            var list: [*c]object = lists.*.unnamed_0.unnamed_0.car;
            _ = &list;
            if (list == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
                _ = blk: {
                    const tmp = GCStack.*.unnamed_0.unnamed_0.cdr;
                    GCStack = tmp;
                    break :blk tmp;
                };
                _ = blk: {
                    const tmp = GCStack.*.unnamed_0.unnamed_0.cdr;
                    GCStack = tmp;
                    break :blk tmp;
                };
                return result;
            }
            if (!listp(list)) {
                @"error"(@as([*c]const u8, @ptrCast(@alignCast(&notproper[@as(usize, @intCast(0))]))), list);
            }
            var item: [*c]object = if (@as(c_int, @intFromBool(mapl)) != 0) list else list.*.unnamed_0.unnamed_0.car;
            _ = &item;
            var obj: [*c]object = cons(item, null);
            _ = &obj;
            lists.*.unnamed_0.unnamed_0.car = list.*.unnamed_0.unnamed_0.cdr;
            tailp.*.unnamed_0.unnamed_0.cdr = obj;
            tailp = obj;
            lists = lists.*.unnamed_0.unnamed_0.cdr;
        }
        _ = apply(function, params.*.unnamed_0.unnamed_0.cdr, env);
    }
    return null;
}
pub export fn mapcarfun(arg_result: [*c]object, arg_tail: [*c][*c]object) void {
    var result = arg_result;
    _ = &result;
    var tail = arg_tail;
    _ = &tail;
    var obj: [*c]object = cons(result, null);
    _ = &obj;
    tail.*.*.unnamed_0.unnamed_0.cdr = obj;
    tail.* = obj;
}
pub export fn mapcanfun(arg_result: [*c]object, arg_tail: [*c][*c]object) void {
    var result = arg_result;
    _ = &result;
    var tail = arg_tail;
    _ = &tail;
    if (tail.*.*.unnamed_0.unnamed_0.cdr != @as([*c]struct_sobject, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        @"error"(@as([*c]const u8, @ptrCast(@alignCast(&notproper[@as(usize, @intCast(0))]))), tail.*);
    }
    while (consp(result)) {
        tail.*.*.unnamed_0.unnamed_0.cdr = result;
        tail.* = result;
        result = result.*.unnamed_0.unnamed_0.cdr;
    }
}
pub export fn mapcarcan(arg_args: [*c]object, arg_env: [*c]object, arg_fun: mapfun_t, arg_maplist: bool) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    var fun = arg_fun;
    _ = &fun;
    var maplist = arg_maplist;
    _ = &maplist;
    var function: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &function;
    args = args.*.unnamed_0.unnamed_0.cdr;
    var params: [*c]object = cons(null, null);
    _ = &params;
    _ = blk: {
        const tmp = cons(params, GCStack);
        GCStack = tmp;
        break :blk tmp;
    };
    var head: [*c]object = cons(null, null);
    _ = &head;
    _ = blk: {
        const tmp = cons(head, GCStack);
        GCStack = tmp;
        break :blk tmp;
    };
    var tail: [*c]object = head;
    _ = &tail;
    while (true) {
        var tailp: [*c]object = params;
        _ = &tailp;
        var lists: [*c]object = args;
        _ = &lists;
        while (lists != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            var list: [*c]object = lists.*.unnamed_0.unnamed_0.car;
            _ = &list;
            if (list == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
                _ = blk: {
                    const tmp = GCStack.*.unnamed_0.unnamed_0.cdr;
                    GCStack = tmp;
                    break :blk tmp;
                };
                _ = blk: {
                    const tmp = GCStack.*.unnamed_0.unnamed_0.cdr;
                    GCStack = tmp;
                    break :blk tmp;
                };
                return head.*.unnamed_0.unnamed_0.cdr;
            }
            if (!listp(list)) {
                @"error"(@as([*c]const u8, @ptrCast(@alignCast(&notproper[@as(usize, @intCast(0))]))), list);
            }
            var item: [*c]object = if (@as(c_int, @intFromBool(maplist)) != 0) list else list.*.unnamed_0.unnamed_0.car;
            _ = &item;
            var obj: [*c]object = cons(item, null);
            _ = &obj;
            lists.*.unnamed_0.unnamed_0.car = list.*.unnamed_0.unnamed_0.cdr;
            tailp.*.unnamed_0.unnamed_0.cdr = obj;
            tailp = obj;
            lists = lists.*.unnamed_0.unnamed_0.cdr;
        }
        var result: [*c]object = apply(function, params.*.unnamed_0.unnamed_0.cdr, env);
        _ = &result;
        fun.?(result, &tail);
    }
    return null;
}
pub export fn dobody(arg_args: [*c]object, arg_env: [*c]object, arg_star: bool) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    var star = arg_star;
    _ = &star;
    var varlist: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &varlist;
    var endlist: [*c]object = @as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car;
    _ = &endlist;
    var head: [*c]object = cons(null, null);
    _ = &head;
    _ = blk: {
        const tmp = cons(head, GCStack);
        GCStack = tmp;
        break :blk tmp;
    };
    var ptr: [*c]object = head;
    _ = &ptr;
    var newenv: [*c]object = env;
    _ = &newenv;
    _ = blk: {
        const tmp = cons(newenv, GCStack);
        GCStack = tmp;
        break :blk tmp;
    };
    while (varlist != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var varform: [*c]object = varlist.*.unnamed_0.unnamed_0.car;
        _ = &varform;
        var @"var": [*c]object = undefined;
        _ = &@"var";
        var init: [*c]object = null;
        _ = &init;
        var step: [*c]object = null;
        _ = &step;
        if (!consp(varform)) {
            @"var" = varform;
        } else {
            @"var" = varform.*.unnamed_0.unnamed_0.car;
            varform = varform.*.unnamed_0.unnamed_0.cdr;
            if (varform != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
                init = eval(varform.*.unnamed_0.unnamed_0.car, env);
                varform = varform.*.unnamed_0.unnamed_0.cdr;
                if (varform != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
                    step = cons(varform.*.unnamed_0.unnamed_0.car, null);
                }
            }
        }
        var pair: [*c]object = cons(@"var", init);
        _ = &pair;
        _ = blk: {
            const tmp = GCStack.*.unnamed_0.unnamed_0.cdr;
            GCStack = tmp;
            break :blk tmp;
        };
        _ = blk: {
            const tmp = cons(pair, newenv);
            newenv = tmp;
            break :blk tmp;
        };
        _ = blk: {
            const tmp = cons(newenv, GCStack);
            GCStack = tmp;
            break :blk tmp;
        };
        if (star) {
            env = newenv;
        }
        var cell: [*c]object = cons(cons(step, pair), null);
        _ = &cell;
        ptr.*.unnamed_0.unnamed_0.cdr = cell;
        ptr = ptr.*.unnamed_0.unnamed_0.cdr;
        varlist = varlist.*.unnamed_0.unnamed_0.cdr;
    }
    env = newenv;
    head = head.*.unnamed_0.unnamed_0.cdr;
    var endtest: [*c]object = endlist.*.unnamed_0.unnamed_0.car;
    _ = &endtest;
    var results: [*c]object = endlist.*.unnamed_0.unnamed_0.cdr;
    _ = &results;
    while (eval(endtest, env) == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var forms: [*c]object = @as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.cdr;
        _ = &forms;
        while (forms != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            var result: [*c]object = eval(forms.*.unnamed_0.unnamed_0.car, env);
            _ = &result;
            if ((@as(c_int, @bitCast(@as(c_uint, Flags))) & (@as(c_int, 1) << @intCast(RETURNFLAG))) != 0) {
                _ = blk: {
                    const tmp = @as(flags_t, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_uint, Flags))) & ~(@as(c_int, 1) << @intCast(RETURNFLAG))))));
                    Flags = tmp;
                    break :blk tmp;
                };
                _ = blk: {
                    const tmp = GCStack.*.unnamed_0.unnamed_0.cdr;
                    GCStack = tmp;
                    break :blk tmp;
                };
                _ = blk: {
                    const tmp = GCStack.*.unnamed_0.unnamed_0.cdr;
                    GCStack = tmp;
                    break :blk tmp;
                };
                return result;
            }
            forms = forms.*.unnamed_0.unnamed_0.cdr;
        }
        var varlist_1: [*c]object = head;
        _ = &varlist_1;
        var count: c_int = 0;
        _ = &count;
        while (varlist_1 != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            var varform: [*c]object = varlist_1.*.unnamed_0.unnamed_0.car;
            _ = &varform;
            var step: [*c]object = varform.*.unnamed_0.unnamed_0.car;
            _ = &step;
            var pair: [*c]object = varform.*.unnamed_0.unnamed_0.cdr;
            _ = &pair;
            if (step != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
                var val: [*c]object = eval(step.*.unnamed_0.unnamed_0.car, env);
                _ = &val;
                if (star) {
                    pair.*.unnamed_0.unnamed_0.cdr = val;
                } else {
                    _ = blk: {
                        const tmp = cons(val, GCStack);
                        GCStack = tmp;
                        break :blk tmp;
                    };
                    _ = blk: {
                        const tmp = cons(pair, GCStack);
                        GCStack = tmp;
                        break :blk tmp;
                    };
                    count += 1;
                }
            }
            varlist_1 = varlist_1.*.unnamed_0.unnamed_0.cdr;
        }
        while (count > @as(c_int, 0)) {
            @as([*c]object, @ptrCast(@alignCast(GCStack.*.unnamed_0.unnamed_0.car))).*.unnamed_0.unnamed_0.cdr = @as([*c]object, @ptrCast(@alignCast(GCStack.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car;
            _ = blk: {
                const tmp = GCStack.*.unnamed_0.unnamed_0.cdr;
                GCStack = tmp;
                break :blk tmp;
            };
            _ = blk: {
                const tmp = GCStack.*.unnamed_0.unnamed_0.cdr;
                GCStack = tmp;
                break :blk tmp;
            };
            count -= 1;
        }
    }
    _ = blk: {
        const tmp = GCStack.*.unnamed_0.unnamed_0.cdr;
        GCStack = tmp;
        break :blk tmp;
    };
    _ = blk: {
        const tmp = GCStack.*.unnamed_0.unnamed_0.cdr;
        GCStack = tmp;
        break :blk tmp;
    };
    return eval(tf_progn(results, env), env);
}
pub export fn I2Cinit(arg_enablePullup: bool) void {
    var enablePullup = arg_enablePullup;
    _ = &enablePullup;
    {
        _ = printf("TODO: I2Cinit\r\n");
        return;
    }
}
pub export fn I2Cread() c_int {
    {
        _ = printf("TODO: I2Cread\r\n");
        return 0;
    }
}
pub export fn I2Cwrite(arg_data: u8) void {
    var data = arg_data;
    _ = &data;
    {
        _ = printf("TODO: I2Cwrite\r\n");
        return;
    }
}
pub export fn I2Cstart(arg_address: u8, arg_read: u8) bool {
    var address = arg_address;
    _ = &address;
    var read = arg_read;
    _ = &read;
    {
        _ = printf("TODO: I2Cstart\r\n");
        return @as(c_int, 1) != 0;
    }
}
pub export fn I2Crestart(arg_address: u8, arg_read: u8) bool {
    var address = arg_address;
    _ = &address;
    var read = arg_read;
    _ = &read;
    {
        _ = printf("TODO: I2Crestart\r\n");
        return @as(c_int, 1) != 0;
    }
}
pub export fn I2Cstop(arg_read: u8) void {
    var read = arg_read;
    _ = &read;
    {
        _ = printf("TODO: I2Cstop\r\n");
        return;
    }
}
pub const SERIALSTREAM: c_int = 0;
pub const I2CSTREAM: c_int = 1;
pub const SPISTREAM: c_int = 2;
pub const SDSTREAM: c_int = 3;
pub const WIFISTREAM: c_int = 4;
pub const STRINGSTREAM: c_int = 5;
pub const GFXSTREAM: c_int = 6;
pub const enum_stream = c_uint;
pub export fn spiwrite(arg_c: u8) void {
    var c = arg_c;
    _ = &c;
    {
        _ = printf("TODO: spiwrite\r\n");
        return;
    }
}
pub export fn i2cwrite(arg_c: u8) void {
    var c = arg_c;
    _ = &c;
    {
        _ = printf("TODO: i2cwrite\r\n");
        return;
    }
}
pub export fn serial1write(arg_c: u8) void {
    var c = arg_c;
    _ = &c;
    {
        _ = printf("TODO: serial1write%c\r\n", @as(c_int, @bitCast(@as(c_uint, c))));
        return;
    }
}
pub export fn WiFiwrite(arg_c: u8) void {
    var c = arg_c;
    _ = &c;
    {
        _ = printf("TODO: WiFiwrite%c\r\n", @as(c_int, @bitCast(@as(c_uint, c))));
        return;
    }
}
pub export fn spiread() c_int {
    {
        _ = printf("TODO: spiread\r\n");
        return 0;
    }
}
pub export fn i2cread() c_int {
    return I2Cread();
}
pub export fn serial1read() c_int {
    {
        _ = printf("TODO: serial1read\r\n");
        return 0;
    }
}
pub export fn WiFiread() c_int {
    {
        _ = printf("TODO: WiFiread\r\n");
        return 0;
    }
}
pub export fn serialbegin(arg_address: c_int, arg_baud: c_int) void {
    var address = arg_address;
    _ = &address;
    var baud = arg_baud;
    _ = &baud;
    {
        _ = printf("TODO: serialbegin\r\n");
        return;
    }
}
pub export fn serialend(arg_address: c_int) void {
    var address = arg_address;
    _ = &address;
    {
        _ = printf("TODO: serialend\r\n");
        return;
    }
}
pub export fn pfun_i2c(arg_address: u8) pfun_t {
    var address = arg_address;
    _ = &address;
    var pfun: pfun_t = undefined;
    _ = &pfun;
    if (@as(c_int, @bitCast(@as(c_uint, address))) < @as(c_int, 128)) {
        pfun = &i2cwrite;
    }
    return pfun;
}
pub export fn pfun_spi(arg_address: u8) pfun_t {
    var address = arg_address;
    _ = &address;
    _ = &address;
    return &spiwrite;
}
pub export fn pfun_serial(arg_address: u8) pfun_t {
    var address = arg_address;
    _ = &address;
    var pfun: pfun_t = &pserial;
    _ = &pfun;
    if (@as(c_int, @bitCast(@as(c_uint, address))) == @as(c_int, 1)) {
        pfun = &serial1write;
    }
    return pfun;
}
pub export fn pfun_string(arg_address: u8) pfun_t {
    var address = arg_address;
    _ = &address;
    _ = &address;
    return &pstr;
}
pub export fn pfun_sd(arg_address: u8) pfun_t {
    var address = arg_address;
    _ = &address;
    _ = &address;
    var pfun: pfun_t = &pserial;
    _ = &pfun;
    return pfun;
}
pub export fn pfun_gfx(arg_address: u8) pfun_t {
    var address = arg_address;
    _ = &address;
    _ = &address;
    var pfun: pfun_t = &pserial;
    _ = &pfun;
    return pfun;
}
pub export fn pfun_wifi(arg_address: u8) pfun_t {
    var address = arg_address;
    _ = &address;
    _ = &address;
    var pfun: pfun_t = &pserial;
    _ = &pfun;
    pfun = @as(pfun_t, @ptrCast(@alignCast(&WiFiwrite)));
    return pfun;
}
pub export fn gfun_i2c(arg_address: u8) gfun_t {
    var address = arg_address;
    _ = &address;
    var gfun: gfun_t = undefined;
    _ = &gfun;
    if (@as(c_int, @bitCast(@as(c_uint, address))) < @as(c_int, 128)) {
        gfun = &i2cread;
    }
    return gfun;
}
pub export fn gfun_spi(arg_address: u8) gfun_t {
    var address = arg_address;
    _ = &address;
    return &spiread;
}
pub export fn gfun_serial(arg_address: u8) gfun_t {
    var address = arg_address;
    _ = &address;
    var gfun: gfun_t = &gserial;
    _ = &gfun;
    if (@as(c_int, @bitCast(@as(c_uint, address))) == @as(c_int, 1)) {
        gfun = &serial1read;
    }
    return gfun;
}
pub export fn gfun_sd(arg_address: u8) gfun_t {
    var address = arg_address;
    _ = &address;
    _ = &address;
    var gfun: gfun_t = &gserial;
    _ = &gfun;
    return gfun;
}
pub export fn gfun_wifi(arg_address: u8) gfun_t {
    var address = arg_address;
    _ = &address;
    _ = &address;
    var gfun: gfun_t = &gserial;
    _ = &gfun;
    gfun = @as(gfun_t, @ptrCast(@alignCast(&WiFiread)));
    return gfun;
}
pub export const serialstreamname: [6:0]u8 = "serial".*;
pub export const i2cstreamname: [3:0]u8 = "i2c".*;
pub export const spistreamname: [3:0]u8 = "spi".*;
pub export const sdstreamname: [2:0]u8 = "sd".*;
pub export const wifistreamname: [4:0]u8 = "wifi".*;
pub export const stringstreamname: [6:0]u8 = "string".*;
pub export const gfxstreamname: [3:0]u8 = "gfx".*;
pub export const stream_table: [7]stream_entry_t = [7]stream_entry_t{
    stream_entry_t{
        .streamname = @as([*c]const u8, @ptrCast(@alignCast(&serialstreamname[@as(usize, @intCast(0))]))),
        .pfunptr = &pfun_serial,
        .gfunptr = &gfun_serial,
    },
    stream_entry_t{
        .streamname = @as([*c]const u8, @ptrCast(@alignCast(&i2cstreamname[@as(usize, @intCast(0))]))),
        .pfunptr = &pfun_i2c,
        .gfunptr = &gfun_i2c,
    },
    stream_entry_t{
        .streamname = @as([*c]const u8, @ptrCast(@alignCast(&spistreamname[@as(usize, @intCast(0))]))),
        .pfunptr = &pfun_spi,
        .gfunptr = &gfun_spi,
    },
    stream_entry_t{
        .streamname = @as([*c]const u8, @ptrCast(@alignCast(&sdstreamname[@as(usize, @intCast(0))]))),
        .pfunptr = &pfun_sd,
        .gfunptr = &gfun_sd,
    },
    stream_entry_t{
        .streamname = @as([*c]const u8, @ptrCast(@alignCast(&wifistreamname[@as(usize, @intCast(0))]))),
        .pfunptr = &pfun_wifi,
        .gfunptr = &gfun_wifi,
    },
    stream_entry_t{
        .streamname = @as([*c]const u8, @ptrCast(@alignCast(&stringstreamname[@as(usize, @intCast(0))]))),
        .pfunptr = &pfun_string,
        .gfunptr = null,
    },
    stream_entry_t{
        .streamname = @as([*c]const u8, @ptrCast(@alignCast(&gfxstreamname[@as(usize, @intCast(0))]))),
        .pfunptr = &pfun_gfx,
        .gfunptr = null,
    },
};
pub export var streamtables: [2][*c]const stream_entry_t = [2][*c]const stream_entry_t{
    @as([*c]const stream_entry_t, @ptrCast(@alignCast(&stream_table[@as(usize, @intCast(0))]))),
    null,
};
pub export fn streamtable(arg_n: c_int) [*c]const stream_entry_t {
    var n = arg_n;
    _ = &n;
    return streamtables[@as(c_uint, @intCast(n))];
}
pub export fn pstreamfun(arg_args: [*c]object) pfun_t {
    var args = arg_args;
    _ = &args;
    var nstream: nstream_t = @as(nstream_t, @bitCast(@as(i8, @truncate(SERIALSTREAM))));
    _ = &nstream;
    var address: c_int = 0;
    _ = &address;
    var pfun: pfun_t = &pserial;
    _ = &pfun;
    if ((args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (args.*.unnamed_0.unnamed_0.car != @as([*c]struct_sobject, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))))) {
        var stream_1: c_int = isstream(args.*.unnamed_0.unnamed_0.car);
        _ = &stream_1;
        nstream = @as(nstream_t, @bitCast(@as(i8, @truncate(stream_1 >> @intCast(8)))));
        address = stream_1 & @as(c_int, 255);
    }
    var n: bool = @as(c_int, @bitCast(@as(c_uint, nstream))) < @as(c_int, 16);
    _ = &n;
    var streamfunction: pstream_ptr_t = (blk: {
        const tmp = if (@as(c_int, @intFromBool(n)) != 0) @as(c_int, @bitCast(@as(c_uint, nstream))) else @as(c_int, @bitCast(@as(c_uint, nstream))) - @as(c_int, 16);
        if (tmp >= 0) break :blk streamtable(if (@as(c_int, @intFromBool(n)) != 0) @as(c_int, 0) else @as(c_int, 1)) + @as(usize, @intCast(tmp)) else break :blk streamtable(if (@as(c_int, @intFromBool(n)) != 0) @as(c_int, 0) else @as(c_int, 1)) - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*.pfunptr;
    _ = &streamfunction;
    pfun = streamfunction.?(@as(u8, @bitCast(@as(i8, @truncate(address)))));
    return pfun;
}
pub export fn gstreamfun(arg_args: [*c]object) gfun_t {
    var args = arg_args;
    _ = &args;
    var nstream: nstream_t = @as(nstream_t, @bitCast(@as(i8, @truncate(SERIALSTREAM))));
    _ = &nstream;
    var address: c_int = 0;
    _ = &address;
    var gfun: gfun_t = &gserial;
    _ = &gfun;
    if (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var stream_1: c_int = isstream(args.*.unnamed_0.unnamed_0.car);
        _ = &stream_1;
        nstream = @as(nstream_t, @bitCast(@as(i8, @truncate(stream_1 >> @intCast(8)))));
        address = stream_1 & @as(c_int, 255);
    }
    var n: bool = @as(c_int, @bitCast(@as(c_uint, nstream))) < @as(c_int, 16);
    _ = &n;
    var streamfunction: gstream_ptr_t = (blk: {
        const tmp = if (@as(c_int, @intFromBool(n)) != 0) @as(c_int, @bitCast(@as(c_uint, nstream))) else @as(c_int, @bitCast(@as(c_uint, nstream))) - @as(c_int, 16);
        if (tmp >= 0) break :blk streamtable(if (@as(c_int, @intFromBool(n)) != 0) @as(c_int, 0) else @as(c_int, 1)) + @as(usize, @intCast(tmp)) else break :blk streamtable(if (@as(c_int, @intFromBool(n)) != 0) @as(c_int, 0) else @as(c_int, 1)) - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*.gfunptr;
    _ = &streamfunction;
    gfun = streamfunction.?(@as(u8, @bitCast(@as(i8, @truncate(address)))));
    return gfun;
}
pub export fn checkanalogread(arg_pin: c_int) void {
    var pin = arg_pin;
    _ = &pin;
}
pub export fn checkanalogwrite(arg_pin: c_int) void {
    var pin = arg_pin;
    _ = &pin;
}
pub export fn tone(arg_pin: c_int, arg_note: c_int) void {
    var pin = arg_pin;
    _ = &pin;
    var note = arg_note;
    _ = &note;
    _ = blk: {
        _ = &pin;
        break :blk note;
    };
}
pub export fn noTone(arg_pin: c_int) void {
    var pin = arg_pin;
    _ = &pin;
    _ = &pin;
}
pub export const scale: [12]c_int = [12]c_int{
    4186,
    4435,
    4699,
    4978,
    5274,
    5588,
    5920,
    6272,
    6645,
    7040,
    7459,
    7902,
};
pub export fn playnote(arg_pin: c_int, arg_note: c_int, arg_octave: c_int) void {
    var pin = arg_pin;
    _ = &pin;
    var note = arg_note;
    _ = &note;
    var octave = arg_octave;
    _ = &octave;
    var oct: c_int = octave + @divTrunc(note, @as(c_int, 12));
    _ = &oct;
    var prescaler: c_int = @as(c_int, 8) - oct;
    _ = &prescaler;
    if ((prescaler < @as(c_int, 0)) or (prescaler > @as(c_int, 8))) {
        @"error"("octave out of range", number(oct));
    }
    tone(pin, scale[@as(c_uint, @intCast(@import("std").zig.c_translation.signedRemainder(note, @as(c_int, 12))))] >> @intCast(prescaler));
}
pub export fn nonote(arg_pin: c_int) void {
    var pin = arg_pin;
    _ = &pin;
    noTone(pin);
}
pub export fn initsleep() void {}
pub export fn doze(arg_secs: c_int) void {
    var secs = arg_secs;
    _ = &secs;
    delay(@as(c_int, 1000) * secs);
}
pub export const PPINDENT: c_int = 2;
pub export const PPWIDTH: c_int = 80;
pub export const GFXPPWIDTH: c_int = 52;
pub export var ppwidth: c_int = PPWIDTH;
pub export fn pcount(arg_c: u8) void {
    var c = arg_c;
    _ = &c;
    if (@as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, '\n')) {
        PrintCount +%= 1;
    }
    PrintCount +%= 1;
}
pub export fn atomwidth(arg_obj: [*c]object) u8 {
    var obj = arg_obj;
    _ = &obj;
    PrintCount = 0;
    printobject(obj, &pcount);
    return PrintCount;
}
pub export fn basewidth(arg_obj: [*c]object, arg_base: u8) u8 {
    var obj = arg_obj;
    _ = &obj;
    var base = arg_base;
    _ = &base;
    PrintCount = 0;
    pintbase(@as(u32, @bitCast(obj.*.unnamed_0.unnamed_1.unnamed_0.integer)), base, &pcount);
    return PrintCount;
}
pub export fn quoted(arg_obj: [*c]object) bool {
    var obj = arg_obj;
    _ = &obj;
    return ((((@as(c_int, @intFromBool(consp(obj))) != 0) and (obj.*.unnamed_0.unnamed_0.car != @as([*c]struct_sobject, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))))) and (obj.*.unnamed_0.unnamed_0.car.*.unnamed_0.unnamed_1.unnamed_0.name == sym(@as(builtin_t, @bitCast(@as(c_long, QUOTE)))))) and (@as(c_int, @intFromBool(consp(obj.*.unnamed_0.unnamed_0.cdr))) != 0)) and (@as([*c]object, @ptrCast(@alignCast(obj.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.cdr == @as([*c]struct_sobject, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))));
}
pub export fn subwidth(arg_obj: [*c]object, arg_w: c_int) c_int {
    var obj = arg_obj;
    _ = &obj;
    var w = arg_w;
    _ = &w;
    if (!consp(obj)) return w - @as(c_int, @bitCast(@as(c_uint, atomwidth(obj))));
    if (quoted(obj)) {
        obj = @as([*c]object, @ptrCast(@alignCast(obj.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car;
    }
    return subwidthlist(obj, w - @as(c_int, 1));
}
pub export fn superprint(arg_form: [*c]object, arg_lm: c_int, arg_pfun: pfun_t) void {
    var form = arg_form;
    _ = &form;
    var lm = arg_lm;
    _ = &lm;
    var pfun = arg_pfun;
    _ = &pfun;
    if (!consp(form)) {
        if (isbuiltin(form, @as(builtin_t, @bitCast(@as(c_long, NOTHING)))) != 0) {
            printsymbol(form, pfun);
        } else {
            printobject(form, pfun);
        }
    } else if (quoted(form)) {
        pfun.?(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '\''))))));
        superprint(@as([*c]object, @ptrCast(@alignCast(form.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car, lm + @as(c_int, 1), pfun);
    } else {
        lm = lm + PPINDENT;
        var fits: bool = subwidth(form, (ppwidth - lm) - PPINDENT) >= @as(c_int, 0);
        _ = &fits;
        var special: c_int = 0;
        _ = &special;
        var extra: c_int = 0;
        _ = &extra;
        var separate: bool = @as(c_int, 1) != 0;
        _ = &separate;
        var arg: [*c]object = form.*.unnamed_0.unnamed_0.car;
        _ = &arg;
        if (((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(SYMBOL)))) and (@as(c_int, @intFromBool(builtinp(arg.*.unnamed_0.unnamed_1.unnamed_0.name))) != 0)) {
            var minmax: u8 = getminmax(builtin(arg.*.unnamed_0.unnamed_1.unnamed_0.name));
            _ = &minmax;
            if ((@as(c_int, @bitCast(@as(c_uint, minmax))) == @as(c_int, 215)) or (@as(c_int, @bitCast(@as(c_uint, minmax))) == @as(c_int, 203))) {
                special = 2;
            } else if ((((@as(c_int, @bitCast(@as(c_uint, minmax))) == @as(c_int, 207)) or (@as(c_int, @bitCast(@as(c_uint, minmax))) == @as(c_int, 15))) or (@as(c_int, @bitCast(@as(c_uint, minmax))) == @as(c_int, 79))) or (@as(c_int, @bitCast(@as(c_uint, minmax))) == @as(c_int, 83))) {
                special = 1;
            }
        }
        while (form != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            if (!consp(form)) {
                pfstring(" . ", pfun);
                printobject(form, pfun);
                pfun.?(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, ')'))))));
                return;
            } else if (separate) {
                pfun.?(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '('))))));
                separate = @as(c_int, 0) != 0;
            } else if (special != 0) {
                pfun.?(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, ' '))))));
                special -= 1;
            } else if (fits) {
                pfun.?(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, ' '))))));
            } else {
                pln(pfun);
                indent(@as(u8, @bitCast(@as(i8, @truncate(lm)))), @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, ' '))))), pfun);
            }
            superprint(form.*.unnamed_0.unnamed_0.car, lm + extra, pfun);
            form = form.*.unnamed_0.unnamed_0.cdr;
        }
        pfun.?(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, ')'))))));
        yield_loop();
    }
}
pub export fn edit(arg_fun: [*c]object) [*c]object {
    var fun = arg_fun;
    _ = &fun;
    while (true) {
        if ((@as(c_int, @bitCast(@as(c_uint, Flags))) & (@as(c_int, 1) << @intCast(EXITEDITOR))) != 0) return fun;
        var c: u8 = @as(u8, @bitCast(@as(i8, @truncate(gserial()))));
        _ = &c;
        if (@as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, 'q')) {
            _ = blk: {
                const tmp = @as(flags_t, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_uint, Flags))) | (@as(c_int, 1) << @intCast(EXITEDITOR))))));
                Flags = tmp;
                break :blk tmp;
            };
        } else if (@as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, 'b')) return fun else if (@as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, 'r')) {
            fun = sread(&gserial);
        } else if (@as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, '\n')) {
            pfl(&pserial);
            superprint(fun, @as(c_int, 0), &pserial);
            pln(&pserial);
        } else if (@as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, 'c')) {
            fun = cons(sread(&gserial), fun);
        } else if (!consp(fun)) {
            pserial(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '!'))))));
        } else if (@as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, 'd')) {
            fun = cons(fun.*.unnamed_0.unnamed_0.car, edit(fun.*.unnamed_0.unnamed_0.cdr));
        } else if (@as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, 'a')) {
            fun = cons(edit(fun.*.unnamed_0.unnamed_0.car), fun.*.unnamed_0.unnamed_0.cdr);
        } else if (@as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, 'x')) {
            fun = fun.*.unnamed_0.unnamed_0.cdr;
        } else {
            pserial(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '?'))))));
        }
    }
    return null;
}
pub export fn sp_quote(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return args.*.unnamed_0.unnamed_0.car;
}
pub export fn sp_or(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    while (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var val: [*c]object = eval(args.*.unnamed_0.unnamed_0.car, env);
        _ = &val;
        if (val != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return val;
        args = args.*.unnamed_0.unnamed_0.cdr;
    }
    return null;
}
pub export fn sp_defun(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var @"var": [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &@"var";
    if (!((@"var" != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (@"var".*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(SYMBOL))))) {
        @"error"(@as([*c]const u8, @ptrCast(@alignCast(&notasymbol[@as(usize, @intCast(0))]))), @"var");
    }
    var val: [*c]object = cons(bsymbol(@as(builtin_t, @bitCast(@as(c_long, LAMBDA)))), args.*.unnamed_0.unnamed_0.cdr);
    _ = &val;
    var pair: [*c]object = value(@"var".*.unnamed_0.unnamed_1.unnamed_0.name, GlobalEnv);
    _ = &pair;
    if (pair != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        pair.*.unnamed_0.unnamed_0.cdr = val;
    } else {
        _ = blk: {
            const tmp = cons(cons(@"var", val), GlobalEnv);
            GlobalEnv = tmp;
            break :blk tmp;
        };
    }
    return @"var";
}
pub export fn sp_defvar(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    var @"var": [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &@"var";
    if (!((@"var" != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (@"var".*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(SYMBOL))))) {
        @"error"(@as([*c]const u8, @ptrCast(@alignCast(&notasymbol[@as(usize, @intCast(0))]))), @"var");
    }
    var val: [*c]object = null;
    _ = &val;
    args = args.*.unnamed_0.unnamed_0.cdr;
    if (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        _ = blk: {
            const tmp = @as(flags_t, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_uint, Flags))) | (@as(c_int, 1) << @intCast(NOESC))))));
            Flags = tmp;
            break :blk tmp;
        };
        val = eval(args.*.unnamed_0.unnamed_0.car, env);
        _ = blk: {
            const tmp = @as(flags_t, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_uint, Flags))) & ~(@as(c_int, 1) << @intCast(NOESC))))));
            Flags = tmp;
            break :blk tmp;
        };
    }
    var pair: [*c]object = value(@"var".*.unnamed_0.unnamed_1.unnamed_0.name, GlobalEnv);
    _ = &pair;
    if (pair != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        pair.*.unnamed_0.unnamed_0.cdr = val;
    } else {
        _ = blk: {
            const tmp = cons(cons(@"var", val), GlobalEnv);
            GlobalEnv = tmp;
            break :blk tmp;
        };
    }
    return @"var";
}
pub export fn sp_setq(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    var arg: [*c]object = null;
    _ = &arg;
    var setq: builtin_t = Context;
    _ = &setq;
    while (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        if (args.*.unnamed_0.unnamed_0.cdr == @as([*c]struct_sobject, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            Context = setq;
            error2(@as([*c]const u8, @ptrCast(@alignCast(&oddargs[@as(usize, @intCast(0))]))));
        }
        var pair: [*c]object = findvalue(args.*.unnamed_0.unnamed_0.car, env);
        _ = &pair;
        arg = eval(@as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car, env);
        pair.*.unnamed_0.unnamed_0.cdr = arg;
        args = @as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.cdr;
    }
    return arg;
}
pub export fn sp_loop(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    var start: [*c]object = args;
    _ = &start;
    while (true) {
        yield_loop();
        args = start;
        while (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            var result: [*c]object = eval(args.*.unnamed_0.unnamed_0.car, env);
            _ = &result;
            if ((@as(c_int, @bitCast(@as(c_uint, Flags))) & (@as(c_int, 1) << @intCast(RETURNFLAG))) != 0) {
                _ = blk: {
                    const tmp = @as(flags_t, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_uint, Flags))) & ~(@as(c_int, 1) << @intCast(RETURNFLAG))))));
                    Flags = tmp;
                    break :blk tmp;
                };
                return result;
            }
            args = args.*.unnamed_0.unnamed_0.cdr;
        }
    }
    return null;
}
pub export fn sp_push(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    var bit: c_int = undefined;
    _ = &bit;
    var item: [*c]object = eval(args.*.unnamed_0.unnamed_0.car, env);
    _ = &item;
    var loc: [*c][*c]object = place(@as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car, env, &bit);
    _ = &loc;
    if (bit != -@as(c_int, 1)) {
        error2(@as([*c]const u8, @ptrCast(@alignCast(&invalidarg[@as(usize, @intCast(0))]))));
    }
    _ = blk: {
        const tmp = cons(item, loc.*);
        loc.* = tmp;
        break :blk tmp;
    };
    return loc.*;
}
pub export fn sp_pop(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    var bit: c_int = undefined;
    _ = &bit;
    var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &arg;
    if (arg == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        error2(@as([*c]const u8, @ptrCast(@alignCast(&invalidarg[@as(usize, @intCast(0))]))));
    }
    var loc: [*c][*c]object = place(arg, env, &bit);
    _ = &loc;
    if (bit < -@as(c_int, 1)) {
        @"error"(@as([*c]const u8, @ptrCast(@alignCast(&invalidarg[@as(usize, @intCast(0))]))), arg);
    }
    if (!consp(loc.*)) {
        @"error"(@as([*c]const u8, @ptrCast(@alignCast(&notalist[@as(usize, @intCast(0))]))), loc.*);
    }
    var result: [*c]object = loc.*.*.unnamed_0.unnamed_0.car;
    _ = &result;
    _ = blk: {
        const tmp = loc.*.*.unnamed_0.unnamed_0.cdr;
        loc.* = tmp;
        break :blk tmp;
    };
    return result;
}
pub export fn sp_incf(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    var bit: c_int = undefined;
    _ = &bit;
    var loc: [*c][*c]object = place(args.*.unnamed_0.unnamed_0.car, env, &bit);
    _ = &loc;
    if (bit < -@as(c_int, 1)) {
        error2(@as([*c]const u8, @ptrCast(@alignCast(&notanumber[@as(usize, @intCast(0))]))));
    }
    args = args.*.unnamed_0.unnamed_0.cdr;
    var x: [*c]object = loc.*;
    _ = &x;
    var inc: [*c]object = if (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) eval(args.*.unnamed_0.unnamed_0.car, env) else null;
    _ = &inc;
    if (bit != -@as(c_int, 1)) {
        var increment: c_int = undefined;
        _ = &increment;
        if (inc == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            increment = 1;
        } else {
            increment = checkbitvalue(inc);
        }
        var newvalue: c_int = ((loc.*.*.unnamed_0.unnamed_1.unnamed_0.integer >> @intCast(bit)) & @as(c_int, 1)) + increment;
        _ = &newvalue;
        if ((newvalue & ~@as(c_int, 1)) != 0) {
            error2("result is not a bit value");
        }
        loc.* = number((loc.*.*.unnamed_0.unnamed_1.unnamed_0.integer & ~(@as(c_int, 1) << @intCast(bit))) | (newvalue << @intCast(bit)));
        return number(newvalue);
    }
    if (((x != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (x.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(FLOAT)))) or ((inc != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (inc.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(FLOAT))))) {
        var increment: f32 = undefined;
        _ = &increment;
        var value_1: f32 = checkintfloat(x);
        _ = &value_1;
        if (inc == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            increment = @as(f32, @floatCast(1.0));
        } else {
            increment = checkintfloat(inc);
        }
        loc.* = makefloat(value_1 + increment);
    } else if (((x != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (x.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(NUMBER)))) and (((inc != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (inc.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(NUMBER)))) or (inc == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))))) {
        var increment: c_int = undefined;
        _ = &increment;
        var value_1: c_int = x.*.unnamed_0.unnamed_1.unnamed_0.integer;
        _ = &value_1;
        if (inc == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            increment = 1;
        } else {
            increment = inc.*.unnamed_0.unnamed_1.unnamed_0.integer;
        }
        if (increment < @as(c_int, 1)) {
            if (((-@as(c_int, 2147483647) - @as(c_int, 1)) - increment) > value_1) {
                loc.* = makefloat(@as(f32, @floatFromInt(value_1)) + @as(f32, @floatFromInt(increment)));
            } else {
                loc.* = number(value_1 + increment);
            }
        } else {
            if ((@as(c_int, 2147483647) - increment) < value_1) {
                loc.* = makefloat(@as(f32, @floatFromInt(value_1)) + @as(f32, @floatFromInt(increment)));
            } else {
                loc.* = number(value_1 + increment);
            }
        }
    } else {
        error2(@as([*c]const u8, @ptrCast(@alignCast(&notanumber[@as(usize, @intCast(0))]))));
    }
    return loc.*;
}
pub export fn sp_decf(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    var bit: c_int = undefined;
    _ = &bit;
    var loc: [*c][*c]object = place(args.*.unnamed_0.unnamed_0.car, env, &bit);
    _ = &loc;
    if (bit < -@as(c_int, 1)) {
        error2(@as([*c]const u8, @ptrCast(@alignCast(&notanumber[@as(usize, @intCast(0))]))));
    }
    args = args.*.unnamed_0.unnamed_0.cdr;
    var x: [*c]object = loc.*;
    _ = &x;
    var dec: [*c]object = if (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) eval(args.*.unnamed_0.unnamed_0.car, env) else null;
    _ = &dec;
    if (bit != -@as(c_int, 1)) {
        var decrement: c_int = undefined;
        _ = &decrement;
        if (dec == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            decrement = 1;
        } else {
            decrement = checkbitvalue(dec);
        }
        var newvalue: c_int = ((loc.*.*.unnamed_0.unnamed_1.unnamed_0.integer >> @intCast(bit)) & @as(c_int, 1)) - decrement;
        _ = &newvalue;
        if ((newvalue & ~@as(c_int, 1)) != 0) {
            error2("result is not a bit value");
        }
        loc.* = number((loc.*.*.unnamed_0.unnamed_1.unnamed_0.integer & ~(@as(c_int, 1) << @intCast(bit))) | (newvalue << @intCast(bit)));
        return number(newvalue);
    }
    if (((x != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (x.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(FLOAT)))) or ((dec != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (dec.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(FLOAT))))) {
        var decrement: f32 = undefined;
        _ = &decrement;
        var value_1: f32 = checkintfloat(x);
        _ = &value_1;
        if (dec == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            decrement = @as(f32, @floatCast(1.0));
        } else {
            decrement = checkintfloat(dec);
        }
        loc.* = makefloat(value_1 - decrement);
    } else if (((x != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (x.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(NUMBER)))) and (((dec != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (dec.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(NUMBER)))) or (dec == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))))) {
        var decrement: c_int = undefined;
        _ = &decrement;
        var value_1: c_int = x.*.unnamed_0.unnamed_1.unnamed_0.integer;
        _ = &value_1;
        if (dec == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            decrement = 1;
        } else {
            decrement = dec.*.unnamed_0.unnamed_1.unnamed_0.integer;
        }
        if (decrement < @as(c_int, 1)) {
            if ((@as(c_int, 2147483647) + decrement) < value_1) {
                loc.* = makefloat(@as(f32, @floatFromInt(value_1)) - @as(f32, @floatFromInt(decrement)));
            } else {
                loc.* = number(value_1 - decrement);
            }
        } else {
            if (((-@as(c_int, 2147483647) - @as(c_int, 1)) + decrement) > value_1) {
                loc.* = makefloat(@as(f32, @floatFromInt(value_1)) - @as(f32, @floatFromInt(decrement)));
            } else {
                loc.* = number(value_1 - decrement);
            }
        }
    } else {
        error2(@as([*c]const u8, @ptrCast(@alignCast(&notanumber[@as(usize, @intCast(0))]))));
    }
    return loc.*;
}
pub export fn sp_setf(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    var bit: c_int = undefined;
    _ = &bit;
    var setf: builtin_t = Context;
    _ = &setf;
    var arg: [*c]object = null;
    _ = &arg;
    while (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        if (args.*.unnamed_0.unnamed_0.cdr == @as([*c]struct_sobject, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            Context = setf;
            error2(@as([*c]const u8, @ptrCast(@alignCast(&oddargs[@as(usize, @intCast(0))]))));
        }
        var loc: [*c][*c]object = place(args.*.unnamed_0.unnamed_0.car, env, &bit);
        _ = &loc;
        arg = eval(@as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car, env);
        if (bit == -@as(c_int, 1)) {
            loc.* = arg;
        } else if (bit < -@as(c_int, 1)) {
            loc.*.*.unnamed_0.unnamed_1.unnamed_0.chars = (loc.*.*.unnamed_0.unnamed_1.unnamed_0.chars & @as(chars_t, @bitCast(@as(c_long, ~(@as(c_int, 255) << @intCast((-bit - @as(c_int, 2)) << @intCast(3))))))) | @as(chars_t, @bitCast(@as(c_long, checkchar(arg) << @intCast((-bit - @as(c_int, 2)) << @intCast(3)))));
        } else {
            loc.* = number((checkinteger(loc.*) & ~(@as(c_int, 1) << @intCast(bit))) | (checkbitvalue(arg) << @intCast(bit)));
        }
        args = @as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.cdr;
    }
    return arg;
}
pub export fn sp_dolist(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    var params: [*c]object = checkarguments(args, @as(c_int, 2), @as(c_int, 3));
    _ = &params;
    var @"var": [*c]object = params.*.unnamed_0.unnamed_0.car;
    _ = &@"var";
    var list: [*c]object = eval(@as([*c]object, @ptrCast(@alignCast(params.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car, env);
    _ = &list;
    _ = blk: {
        const tmp = cons(list, GCStack);
        GCStack = tmp;
        break :blk tmp;
    };
    var pair: [*c]object = cons(@"var", null);
    _ = &pair;
    _ = blk: {
        const tmp = cons(pair, env);
        env = tmp;
        break :blk tmp;
    };
    params = @as([*c]object, @ptrCast(@alignCast(params.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.cdr;
    args = args.*.unnamed_0.unnamed_0.cdr;
    while (list != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        if (!listp(list)) {
            @"error"(@as([*c]const u8, @ptrCast(@alignCast(&notproper[@as(usize, @intCast(0))]))), list);
        }
        pair.*.unnamed_0.unnamed_0.cdr = list.*.unnamed_0.unnamed_0.car;
        var forms: [*c]object = args;
        _ = &forms;
        while (forms != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            var result: [*c]object = eval(forms.*.unnamed_0.unnamed_0.car, env);
            _ = &result;
            if ((@as(c_int, @bitCast(@as(c_uint, Flags))) & (@as(c_int, 1) << @intCast(RETURNFLAG))) != 0) {
                _ = blk: {
                    const tmp = @as(flags_t, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_uint, Flags))) & ~(@as(c_int, 1) << @intCast(RETURNFLAG))))));
                    Flags = tmp;
                    break :blk tmp;
                };
                _ = blk: {
                    const tmp = GCStack.*.unnamed_0.unnamed_0.cdr;
                    GCStack = tmp;
                    break :blk tmp;
                };
                return result;
            }
            forms = forms.*.unnamed_0.unnamed_0.cdr;
        }
        list = list.*.unnamed_0.unnamed_0.cdr;
    }
    pair.*.unnamed_0.unnamed_0.cdr = null;
    _ = blk: {
        const tmp = GCStack.*.unnamed_0.unnamed_0.cdr;
        GCStack = tmp;
        break :blk tmp;
    };
    if (params == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return null;
    return eval(params.*.unnamed_0.unnamed_0.car, env);
}
pub export fn sp_dotimes(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    var params: [*c]object = checkarguments(args, @as(c_int, 2), @as(c_int, 3));
    _ = &params;
    var @"var": [*c]object = params.*.unnamed_0.unnamed_0.car;
    _ = &@"var";
    var count: c_int = checkinteger(eval(@as([*c]object, @ptrCast(@alignCast(params.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car, env));
    _ = &count;
    var index_1: c_int = 0;
    _ = &index_1;
    params = @as([*c]object, @ptrCast(@alignCast(params.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.cdr;
    var pair: [*c]object = cons(@"var", number(@as(c_int, 0)));
    _ = &pair;
    _ = blk: {
        const tmp = cons(pair, env);
        env = tmp;
        break :blk tmp;
    };
    args = args.*.unnamed_0.unnamed_0.cdr;
    while (index_1 < count) {
        pair.*.unnamed_0.unnamed_0.cdr = number(index_1);
        var forms: [*c]object = args;
        _ = &forms;
        while (forms != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            var result: [*c]object = eval(forms.*.unnamed_0.unnamed_0.car, env);
            _ = &result;
            if ((@as(c_int, @bitCast(@as(c_uint, Flags))) & (@as(c_int, 1) << @intCast(RETURNFLAG))) != 0) {
                _ = blk: {
                    const tmp = @as(flags_t, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_uint, Flags))) & ~(@as(c_int, 1) << @intCast(RETURNFLAG))))));
                    Flags = tmp;
                    break :blk tmp;
                };
                return result;
            }
            forms = forms.*.unnamed_0.unnamed_0.cdr;
        }
        index_1 += 1;
    }
    pair.*.unnamed_0.unnamed_0.cdr = number(index_1);
    if (params == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return null;
    return eval(params.*.unnamed_0.unnamed_0.car, env);
}
pub export fn sp_do(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    return dobody(args, env, @as(c_int, 0) != 0);
}
pub export fn sp_dostar(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    return dobody(args, env, @as(c_int, 1) != 0);
}
pub export fn sp_trace(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    while (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var @"var": [*c]object = args.*.unnamed_0.unnamed_0.car;
        _ = &@"var";
        if (!((@"var" != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (@"var".*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(SYMBOL))))) {
            @"error"(@as([*c]const u8, @ptrCast(@alignCast(&notasymbol[@as(usize, @intCast(0))]))), @"var");
        }
        trace(@"var".*.unnamed_0.unnamed_1.unnamed_0.name);
        args = args.*.unnamed_0.unnamed_0.cdr;
    }
    var i: c_int = 0;
    _ = &i;
    while (i < @as(c_int, 3)) {
        if (TraceFn[@as(c_uint, @intCast(i))] != @as(c_uint, @bitCast(@as(c_int, 0)))) {
            args = cons(symbol(@as(symbol_t, @bitCast(@as(c_ulong, TraceFn[@as(c_uint, @intCast(i))])))), args);
        }
        i += 1;
    }
    return args;
}
pub export fn sp_untrace(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    if (args == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var i: c_int = 0;
        _ = &i;
        while (i < @as(c_int, 3)) {
            if (TraceFn[@as(c_uint, @intCast(i))] != @as(c_uint, @bitCast(@as(c_int, 0)))) {
                args = cons(symbol(@as(symbol_t, @bitCast(@as(c_ulong, TraceFn[@as(c_uint, @intCast(i))])))), args);
            }
            TraceFn[@as(c_uint, @intCast(i))] = 0;
            i += 1;
        }
    } else {
        while (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            var @"var": [*c]object = args.*.unnamed_0.unnamed_0.car;
            _ = &@"var";
            if (!((@"var" != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (@"var".*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(SYMBOL))))) {
                @"error"(@as([*c]const u8, @ptrCast(@alignCast(&notasymbol[@as(usize, @intCast(0))]))), @"var");
            }
            untrace(@"var".*.unnamed_0.unnamed_1.unnamed_0.name);
            args = args.*.unnamed_0.unnamed_0.cdr;
        }
    }
    return args;
}
pub export fn sp_formillis(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    var param: [*c]object = checkarguments(args, @as(c_int, 0), @as(c_int, 1));
    _ = &param;
    var start: c_ulong = @as(c_ulong, @intFromFloat(millis()));
    _ = &start;
    var now: c_ulong = undefined;
    _ = &now;
    var total: c_ulong = 0;
    _ = &total;
    if (param != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        total = @as(c_ulong, @bitCast(@as(c_long, checkinteger(eval(param.*.unnamed_0.unnamed_0.car, env)))));
    }
    _ = eval(tf_progn(args.*.unnamed_0.unnamed_0.cdr, env), env);
    while (true) {
        now = @as(c_ulong, @intFromFloat(millis() - @as(f64, @floatFromInt(start))));
        yield_loop();
        if (!(now < total)) break;
    }
    if (now <= @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 2147483647))))) return number(@as(c_int, @bitCast(@as(c_uint, @truncate(now)))));
    return null;
}
pub export fn sp_time(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    var start: c_ulong = @as(c_ulong, @intFromFloat(millis()));
    _ = &start;
    var result: [*c]object = eval(args.*.unnamed_0.unnamed_0.car, env);
    _ = &result;
    var elapsed: c_ulong = @as(c_ulong, @intFromFloat(millis() - @as(f64, @floatFromInt(start))));
    _ = &elapsed;
    printobject(result, &pserial);
    pfstring("\nTime: ", &pserial);
    if (elapsed < @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1000))))) {
        pint(@as(c_int, @bitCast(@as(c_uint, @truncate(elapsed)))), &pserial);
        pfstring(" ms\n", &pserial);
    } else {
        elapsed = elapsed +% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 50))));
        pint(@as(c_int, @bitCast(@as(c_uint, @truncate(elapsed / @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1000)))))))), &pserial);
        pserial(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '.'))))));
        pint(@as(c_int, @bitCast(@as(c_uint, @truncate((elapsed / @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 100))))) % @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 10)))))))), &pserial);
        pfstring(" s\n", &pserial);
    }
    return bsymbol(@as(builtin_t, @bitCast(@as(c_long, NOTHING))));
}
pub export fn sp_withoutputtostring(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    var params: [*c]object = checkarguments(args, @as(c_int, 1), @as(c_int, 1));
    _ = &params;
    var @"var": [*c]object = params.*.unnamed_0.unnamed_0.car;
    _ = &@"var";
    var pair: [*c]object = cons(@"var", stream(@as(u8, @bitCast(@as(i8, @truncate(STRINGSTREAM)))), @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0)))))));
    _ = &pair;
    _ = blk: {
        const tmp = cons(pair, env);
        env = tmp;
        break :blk tmp;
    };
    var string: [*c]object = startstring();
    _ = &string;
    _ = blk: {
        const tmp = cons(string, GCStack);
        GCStack = tmp;
        break :blk tmp;
    };
    var forms: [*c]object = args.*.unnamed_0.unnamed_0.cdr;
    _ = &forms;
    _ = eval(tf_progn(forms, env), env);
    _ = blk: {
        const tmp = GCStack.*.unnamed_0.unnamed_0.cdr;
        GCStack = tmp;
        break :blk tmp;
    };
    return string;
}
pub export fn sp_withserial(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    var params: [*c]object = checkarguments(args, @as(c_int, 2), @as(c_int, 3));
    _ = &params;
    var @"var": [*c]object = params.*.unnamed_0.unnamed_0.car;
    _ = &@"var";
    var address: c_int = checkinteger(eval(@as([*c]object, @ptrCast(@alignCast(params.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car, env));
    _ = &address;
    params = @as([*c]object, @ptrCast(@alignCast(params.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.cdr;
    var baud: c_int = 96;
    _ = &baud;
    if (params != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        baud = checkinteger(eval(params.*.unnamed_0.unnamed_0.car, env));
    }
    var pair: [*c]object = cons(@"var", stream(@as(u8, @bitCast(@as(i8, @truncate(SERIALSTREAM)))), @as(u8, @bitCast(@as(i8, @truncate(address))))));
    _ = &pair;
    _ = blk: {
        const tmp = cons(pair, env);
        env = tmp;
        break :blk tmp;
    };
    serialbegin(address, baud);
    var forms: [*c]object = args.*.unnamed_0.unnamed_0.cdr;
    _ = &forms;
    var result: [*c]object = eval(tf_progn(forms, env), env);
    _ = &result;
    serialend(address);
    return result;
}
pub export fn sp_withi2c(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    {
        _ = printf("TODO: sp_withi2c\r\n");
        return null;
    }
}
pub export fn sp_withspi(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    {
        _ = printf("TODO: sp_withspi\r\n");
        return null;
    }
}
pub export fn sp_withsdcard(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = blk: {
        _ = &args;
        break :blk env;
    };
    error2("not supported");
    return null;
}
pub export fn tf_if(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    if ((args == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) or (args.*.unnamed_0.unnamed_0.cdr == @as([*c]struct_sobject, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))))) {
        error2(@as([*c]const u8, @ptrCast(@alignCast(&toofewargs[@as(usize, @intCast(0))]))));
    }
    if (eval(args.*.unnamed_0.unnamed_0.car, env) != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return @as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car;
    args = @as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.cdr;
    return if (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) args.*.unnamed_0.unnamed_0.car else null;
}
pub export fn tf_cond(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    while (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var clause: [*c]object = args.*.unnamed_0.unnamed_0.car;
        _ = &clause;
        if (!consp(clause)) {
            @"error"(@as([*c]const u8, @ptrCast(@alignCast(&illegalclause[@as(usize, @intCast(0))]))), clause);
        }
        var @"test": [*c]object = eval(clause.*.unnamed_0.unnamed_0.car, env);
        _ = &@"test";
        var forms: [*c]object = clause.*.unnamed_0.unnamed_0.cdr;
        _ = &forms;
        if (@"test" != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            if (forms == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return quote(@"test") else return tf_progn(forms, env);
        }
        args = args.*.unnamed_0.unnamed_0.cdr;
    }
    return null;
}
pub export fn tf_when(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    if (args == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        error2(@as([*c]const u8, @ptrCast(@alignCast(&noargument[@as(usize, @intCast(0))]))));
    }
    if (eval(args.*.unnamed_0.unnamed_0.car, env) != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return tf_progn(args.*.unnamed_0.unnamed_0.cdr, env) else return null;
    return null;
}
pub export fn tf_unless(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    if (args == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        error2(@as([*c]const u8, @ptrCast(@alignCast(&noargument[@as(usize, @intCast(0))]))));
    }
    if (eval(args.*.unnamed_0.unnamed_0.car, env) != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return null else return tf_progn(args.*.unnamed_0.unnamed_0.cdr, env);
    return null;
}
pub export fn tf_case(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    var @"test": [*c]object = eval(args.*.unnamed_0.unnamed_0.car, env);
    _ = &@"test";
    args = args.*.unnamed_0.unnamed_0.cdr;
    while (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var clause: [*c]object = args.*.unnamed_0.unnamed_0.car;
        _ = &clause;
        if (!consp(clause)) {
            @"error"(@as([*c]const u8, @ptrCast(@alignCast(&illegalclause[@as(usize, @intCast(0))]))), clause);
        }
        var key: [*c]object = clause.*.unnamed_0.unnamed_0.car;
        _ = &key;
        var forms: [*c]object = clause.*.unnamed_0.unnamed_0.cdr;
        _ = &forms;
        if (consp(key)) {
            while (key != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
                if (eq(@"test", key.*.unnamed_0.unnamed_0.car)) return tf_progn(forms, env);
                key = key.*.unnamed_0.unnamed_0.cdr;
            }
        } else if ((@as(c_int, @intFromBool(eq(@"test", key))) != 0) or (@as(c_int, @intFromBool(eq(key, tee))) != 0)) return tf_progn(forms, env);
        args = args.*.unnamed_0.unnamed_0.cdr;
    }
    return null;
}
pub export fn tf_and(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    if (args == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return tee;
    var more: [*c]object = args.*.unnamed_0.unnamed_0.cdr;
    _ = &more;
    while (more != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        if (eval(args.*.unnamed_0.unnamed_0.car, env) == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return null;
        args = more;
        more = args.*.unnamed_0.unnamed_0.cdr;
    }
    return args.*.unnamed_0.unnamed_0.car;
}
pub export fn fn_not(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return if (args.*.unnamed_0.unnamed_0.car == @as([*c]struct_sobject, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) tee else null;
}
pub export fn fn_cons(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return cons(args.*.unnamed_0.unnamed_0.car, @as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car);
}
pub export fn fn_atom(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return if (!consp(args.*.unnamed_0.unnamed_0.car)) tee else null;
}
pub export fn fn_listp(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return if (@as(c_int, @intFromBool(listp(args.*.unnamed_0.unnamed_0.car))) != 0) tee else null;
}
pub export fn fn_consp(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return if (@as(c_int, @intFromBool(consp(args.*.unnamed_0.unnamed_0.car))) != 0) tee else null;
}
pub export fn fn_symbolp(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &arg;
    return if ((arg == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) or ((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(SYMBOL))))) tee else null;
}
pub export fn fn_arrayp(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return if ((args.*.unnamed_0.unnamed_0.car != @as([*c]struct_sobject, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (args.*.unnamed_0.unnamed_0.car.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(ARRAY)))) tee else null;
}
pub export fn fn_boundp(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    return if (@as(c_int, @intFromBool(boundp(args.*.unnamed_0.unnamed_0.car, env))) != 0) tee else null;
}
pub export fn fn_keywordp(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &arg;
    if (!((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(SYMBOL))))) return null;
    return if ((@as(c_int, @intFromBool(keywordp(arg))) != 0) or (@as(c_int, @intFromBool(colonp(arg.*.unnamed_0.unnamed_1.unnamed_0.name))) != 0)) tee else null;
}
pub export fn fn_setfn(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    var arg: [*c]object = null;
    _ = &arg;
    while (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        if (args.*.unnamed_0.unnamed_0.cdr == @as([*c]struct_sobject, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            error2(@as([*c]const u8, @ptrCast(@alignCast(&oddargs[@as(usize, @intCast(0))]))));
        }
        var pair: [*c]object = findvalue(args.*.unnamed_0.unnamed_0.car, env);
        _ = &pair;
        arg = @as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car;
        pair.*.unnamed_0.unnamed_0.cdr = arg;
        args = @as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.cdr;
    }
    return arg;
}
pub export fn fn_streamp(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &arg;
    return if ((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(STREAM)))) tee else null;
}
pub export fn fn_eq(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return if (@as(c_int, @intFromBool(eq(args.*.unnamed_0.unnamed_0.car, @as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car))) != 0) tee else null;
}
pub export fn fn_equal(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return if (@as(c_int, @intFromBool(equal(args.*.unnamed_0.unnamed_0.car, @as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car))) != 0) tee else null;
}
pub export fn fn_car(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return carx(args.*.unnamed_0.unnamed_0.car);
}
pub export fn fn_cdr(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return cdrx(args.*.unnamed_0.unnamed_0.car);
}
pub export fn fn_caar(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return cxxxr(args, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 4))))));
}
pub export fn fn_cadr(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return cxxxr(args, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 5))))));
}
pub export fn fn_cdar(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return cxxxr(args, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 6))))));
}
pub export fn fn_cddr(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return cxxxr(args, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 7))))));
}
pub export fn fn_caaar(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return cxxxr(args, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 8))))));
}
pub export fn fn_caadr(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return cxxxr(args, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 9))))));
}
pub export fn fn_cadar(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return cxxxr(args, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 10))))));
}
pub export fn fn_caddr(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return cxxxr(args, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 11))))));
}
pub export fn fn_cdaar(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return cxxxr(args, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 12))))));
}
pub export fn fn_cdadr(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return cxxxr(args, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 13))))));
}
pub export fn fn_cddar(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return cxxxr(args, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 14))))));
}
pub export fn fn_cdddr(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return cxxxr(args, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 15))))));
}
pub export fn fn_length(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &arg;
    if (listp(arg)) return number(listlength(arg));
    if ((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(STRING)))) return number(stringlength(arg));
    if (!(((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(ARRAY)))) and (@as([*c]object, @ptrCast(@alignCast(@as([*c]object, @ptrCast(@alignCast(arg.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.cdr == @as([*c]struct_sobject, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))))) {
        @"error"("argument is not a list, 1d array, or string", arg);
    }
    return number(abs(@as([*c]object, @ptrCast(@alignCast(@as([*c]object, @ptrCast(@alignCast(arg.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car.*.unnamed_0.unnamed_1.unnamed_0.integer));
}
pub export fn fn_arraydimensions(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var array: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &array;
    if (!((array != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (array.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(ARRAY))))) {
        @"error"("argument is not an array", array);
    }
    var dimensions: [*c]object = @as([*c]object, @ptrCast(@alignCast(array.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.cdr;
    _ = &dimensions;
    return if (dimensions.*.unnamed_0.unnamed_0.car.*.unnamed_0.unnamed_1.unnamed_0.integer < @as(c_int, 0)) cons(number(-dimensions.*.unnamed_0.unnamed_0.car.*.unnamed_0.unnamed_1.unnamed_0.integer), dimensions.*.unnamed_0.unnamed_0.cdr) else dimensions;
}
pub export fn fn_list(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return args;
}
pub export fn fn_copylist(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &arg;
    if (!listp(arg)) {
        @"error"(@as([*c]const u8, @ptrCast(@alignCast(&notalist[@as(usize, @intCast(0))]))), arg);
    }
    var result: [*c]object = cons(null, null);
    _ = &result;
    var ptr: [*c]object = result;
    _ = &ptr;
    while (consp(arg)) {
        ptr.*.unnamed_0.unnamed_0.cdr = cons(arg.*.unnamed_0.unnamed_0.car, arg.*.unnamed_0.unnamed_0.cdr);
        ptr = ptr.*.unnamed_0.unnamed_0.cdr;
        arg = arg.*.unnamed_0.unnamed_0.cdr;
    }
    return result.*.unnamed_0.unnamed_0.cdr;
}
pub export fn fn_makearray(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var def: [*c]object = null;
    _ = &def;
    var bitp: bool = @as(c_int, 0) != 0;
    _ = &bitp;
    var dims: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &dims;
    if (dims == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        error2("dimensions can't be nil");
    } else if (!consp(dims)) {
        dims = cons(dims, null);
    }
    args = args.*.unnamed_0.unnamed_0.cdr;
    while ((args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (args.*.unnamed_0.unnamed_0.cdr != @as([*c]struct_sobject, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))))) {
        var @"var": [*c]object = args.*.unnamed_0.unnamed_0.car;
        _ = &@"var";
        if (isbuiltin(args.*.unnamed_0.unnamed_0.car, @as(builtin_t, @bitCast(@as(c_long, INITIALELEMENT)))) != 0) {
            def = @as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car;
        } else if ((isbuiltin(args.*.unnamed_0.unnamed_0.car, @as(builtin_t, @bitCast(@as(c_long, ELEMENTTYPE)))) != 0) and (isbuiltin(@as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car, @as(builtin_t, @bitCast(@as(c_long, BIT)))) != 0)) {
            bitp = @as(c_int, 1) != 0;
        } else {
            @"error"("argument not recognised", @"var");
        }
        args = @as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.cdr;
    }
    if (bitp) {
        if (def == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            def = number(@as(c_int, 0));
        } else {
            def = number(-checkbitvalue(def));
        }
    }
    return makearray(dims, def, bitp);
}
pub export fn fn_reverse(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var list: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &list;
    var result: [*c]object = null;
    _ = &result;
    while (list != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        if (!listp(list)) {
            @"error"(@as([*c]const u8, @ptrCast(@alignCast(&notproper[@as(usize, @intCast(0))]))), list);
        }
        _ = blk: {
            const tmp = cons(list.*.unnamed_0.unnamed_0.car, result);
            result = tmp;
            break :blk tmp;
        };
        list = list.*.unnamed_0.unnamed_0.cdr;
    }
    return result;
}
pub export fn fn_nth(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var n: c_int = checkinteger(args.*.unnamed_0.unnamed_0.car);
    _ = &n;
    if (n < @as(c_int, 0)) {
        @"error"(@as([*c]const u8, @ptrCast(@alignCast(&indexnegative[@as(usize, @intCast(0))]))), args.*.unnamed_0.unnamed_0.car);
    }
    var list: [*c]object = @as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car;
    _ = &list;
    while (list != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        if (!listp(list)) {
            @"error"(@as([*c]const u8, @ptrCast(@alignCast(&notproper[@as(usize, @intCast(0))]))), list);
        }
        if (n == @as(c_int, 0)) return list.*.unnamed_0.unnamed_0.car;
        list = list.*.unnamed_0.unnamed_0.cdr;
        n -= 1;
    }
    return null;
}
pub export fn fn_aref(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var bit: c_int = undefined;
    _ = &bit;
    var array: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &array;
    if (!((array != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (array.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(ARRAY))))) {
        @"error"("first argument is not an array", array);
    }
    var loc: [*c]object = getarray(array, args.*.unnamed_0.unnamed_0.cdr, null, &bit).*;
    _ = &loc;
    if (bit == -@as(c_int, 1)) return loc else return number((loc.*.unnamed_0.unnamed_1.unnamed_0.integer >> @intCast(bit)) & @as(c_int, 1));
    return null;
}
pub export fn fn_assoc(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var key: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &key;
    var list: [*c]object = @as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car;
    _ = &list;
    var @"test": [*c]object = testargument(@as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.cdr);
    _ = &@"test";
    while (list != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        if (!listp(list)) {
            @"error"(@as([*c]const u8, @ptrCast(@alignCast(&notproper[@as(usize, @intCast(0))]))), list);
        }
        var pair: [*c]object = list.*.unnamed_0.unnamed_0.car;
        _ = &pair;
        if (!listp(pair)) {
            @"error"("element is not a list", pair);
        }
        if ((pair != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (apply(@"test", cons(key, cons(pair.*.unnamed_0.unnamed_0.car, null)), env) != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))))) return pair;
        list = list.*.unnamed_0.unnamed_0.cdr;
    }
    return null;
}
pub export fn fn_member(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var item: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &item;
    var list: [*c]object = @as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car;
    _ = &list;
    var @"test": [*c]object = testargument(@as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.cdr);
    _ = &@"test";
    while (list != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        if (!listp(list)) {
            @"error"(@as([*c]const u8, @ptrCast(@alignCast(&notproper[@as(usize, @intCast(0))]))), list);
        }
        if (apply(@"test", cons(item, cons(list.*.unnamed_0.unnamed_0.car, null)), env) != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return list;
        list = list.*.unnamed_0.unnamed_0.cdr;
    }
    return null;
}
pub export fn fn_apply(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    var previous: [*c]object = null;
    _ = &previous;
    var last: [*c]object = args;
    _ = &last;
    while (last.*.unnamed_0.unnamed_0.cdr != @as([*c]struct_sobject, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        previous = last;
        last = last.*.unnamed_0.unnamed_0.cdr;
    }
    var arg: [*c]object = last.*.unnamed_0.unnamed_0.car;
    _ = &arg;
    if (!listp(arg)) {
        @"error"(@as([*c]const u8, @ptrCast(@alignCast(&notalist[@as(usize, @intCast(0))]))), arg);
    }
    previous.*.unnamed_0.unnamed_0.cdr = arg;
    return apply(args.*.unnamed_0.unnamed_0.car, args.*.unnamed_0.unnamed_0.cdr, env);
}
pub export fn fn_funcall(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    return apply(args.*.unnamed_0.unnamed_0.car, args.*.unnamed_0.unnamed_0.cdr, env);
}
pub export fn fn_append(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var head: [*c]object = null;
    _ = &head;
    var tail: [*c]object = undefined;
    _ = &tail;
    while (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var list: [*c]object = args.*.unnamed_0.unnamed_0.car;
        _ = &list;
        if (!listp(list)) {
            @"error"(@as([*c]const u8, @ptrCast(@alignCast(&notalist[@as(usize, @intCast(0))]))), list);
        }
        while (consp(list)) {
            var obj: [*c]object = cons(list.*.unnamed_0.unnamed_0.car, list.*.unnamed_0.unnamed_0.cdr);
            _ = &obj;
            if (head == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
                head = obj;
            } else {
                tail.*.unnamed_0.unnamed_0.cdr = obj;
            }
            tail = obj;
            list = list.*.unnamed_0.unnamed_0.cdr;
            if ((args.*.unnamed_0.unnamed_0.cdr != @as([*c]struct_sobject, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and !listp(list)) {
                @"error"(@as([*c]const u8, @ptrCast(@alignCast(&notproper[@as(usize, @intCast(0))]))), args.*.unnamed_0.unnamed_0.car);
            }
        }
        args = args.*.unnamed_0.unnamed_0.cdr;
    }
    return head;
}
pub export fn fn_mapc(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    return mapcl(args, env, @as(c_int, 0) != 0);
}
pub export fn fn_mapl(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    return mapcl(args, env, @as(c_int, 1) != 0);
}
pub export fn fn_mapcar(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    return mapcarcan(args, env, &mapcarfun, @as(c_int, 0) != 0);
}
pub export fn fn_mapcan(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    return mapcarcan(args, env, &mapcanfun, @as(c_int, 0) != 0);
}
pub export fn fn_maplist(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    return mapcarcan(args, env, &mapcarfun, @as(c_int, 1) != 0);
}
pub export fn fn_mapcon(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    return mapcarcan(args, env, &mapcanfun, @as(c_int, 1) != 0);
}
pub export fn fn_add(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var result: c_int = 0;
    _ = &result;
    while (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
        _ = &arg;
        if ((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(FLOAT)))) return add_floats(args, @as(f32, @floatFromInt(result))) else if ((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(NUMBER)))) {
            var val: c_int = arg.*.unnamed_0.unnamed_1.unnamed_0.integer;
            _ = &val;
            if (val < @as(c_int, 1)) {
                if (((-@as(c_int, 2147483647) - @as(c_int, 1)) - val) > result) return add_floats(args, @as(f32, @floatFromInt(result)));
            } else {
                if ((@as(c_int, 2147483647) - val) < result) return add_floats(args, @as(f32, @floatFromInt(result)));
            }
            result = result + val;
        } else {
            @"error"(@as([*c]const u8, @ptrCast(@alignCast(&notanumber[@as(usize, @intCast(0))]))), arg);
        }
        args = args.*.unnamed_0.unnamed_0.cdr;
    }
    return number(result);
}
pub export fn fn_subtract(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &arg;
    args = args.*.unnamed_0.unnamed_0.cdr;
    if (args == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return negate(arg) else if ((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(FLOAT)))) return subtract_floats(args, arg.*.unnamed_0.unnamed_1.unnamed_0.single_float) else if ((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(NUMBER)))) {
        var result: c_int = arg.*.unnamed_0.unnamed_1.unnamed_0.integer;
        _ = &result;
        while (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            arg = args.*.unnamed_0.unnamed_0.car;
            if ((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(FLOAT)))) return subtract_floats(args, @as(f32, @floatFromInt(result))) else if ((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(NUMBER)))) {
                var val: c_int = args.*.unnamed_0.unnamed_0.car.*.unnamed_0.unnamed_1.unnamed_0.integer;
                _ = &val;
                if (val < @as(c_int, 1)) {
                    if ((@as(c_int, 2147483647) + val) < result) return subtract_floats(args, @as(f32, @floatFromInt(result)));
                } else {
                    if (((-@as(c_int, 2147483647) - @as(c_int, 1)) + val) > result) return subtract_floats(args, @as(f32, @floatFromInt(result)));
                }
                result = result - val;
            } else {
                @"error"(@as([*c]const u8, @ptrCast(@alignCast(&notanumber[@as(usize, @intCast(0))]))), arg);
            }
            args = args.*.unnamed_0.unnamed_0.cdr;
        }
        return number(result);
    } else {
        @"error"(@as([*c]const u8, @ptrCast(@alignCast(&notanumber[@as(usize, @intCast(0))]))), arg);
    }
    return null;
}
pub export fn fn_multiply(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var result: c_int = 1;
    _ = &result;
    while (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
        _ = &arg;
        if ((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(FLOAT)))) return multiply_floats(args, @as(f32, @floatFromInt(result))) else if ((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(NUMBER)))) {
            var val: i64 = @as(i64, @bitCast(@as(c_long, result))) * @as(i64, @bitCast(@as(c_long, arg.*.unnamed_0.unnamed_1.unnamed_0.integer)));
            _ = &val;
            if ((val > @as(i64, @bitCast(@as(c_long, @as(c_int, 2147483647))))) or (val < @as(i64, @bitCast(@as(c_long, -@as(c_int, 2147483647) - @as(c_int, 1)))))) return multiply_floats(args, @as(f32, @floatFromInt(result)));
            result = @as(c_int, @bitCast(@as(c_int, @truncate(val))));
        } else {
            @"error"(@as([*c]const u8, @ptrCast(@alignCast(&notanumber[@as(usize, @intCast(0))]))), arg);
        }
        args = args.*.unnamed_0.unnamed_0.cdr;
    }
    return number(result);
}
pub export fn fn_divide(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &arg;
    args = args.*.unnamed_0.unnamed_0.cdr;
    if (args == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        if ((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(FLOAT)))) {
            var f: f32 = arg.*.unnamed_0.unnamed_1.unnamed_0.single_float;
            _ = &f;
            if (@as(f64, @floatCast(f)) == 0.0) {
                error2(@as([*c]const u8, @ptrCast(@alignCast(&divisionbyzero[@as(usize, @intCast(0))]))));
            }
            return makefloat(@as(f32, @floatCast(1.0 / @as(f64, @floatCast(f)))));
        } else if ((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(NUMBER)))) {
            var i: c_int = arg.*.unnamed_0.unnamed_1.unnamed_0.integer;
            _ = &i;
            if (i == @as(c_int, 0)) {
                error2(@as([*c]const u8, @ptrCast(@alignCast(&divisionbyzero[@as(usize, @intCast(0))]))));
            } else if (i == @as(c_int, 1)) return number(@as(c_int, 1)) else return makefloat(@as(f32, @floatCast(1.0 / @as(f64, @floatFromInt(i)))));
        } else {
            @"error"(@as([*c]const u8, @ptrCast(@alignCast(&notanumber[@as(usize, @intCast(0))]))), arg);
        }
    }
    if ((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(FLOAT)))) return divide_floats(args, arg.*.unnamed_0.unnamed_1.unnamed_0.single_float) else if ((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(NUMBER)))) {
        var result: c_int = arg.*.unnamed_0.unnamed_1.unnamed_0.integer;
        _ = &result;
        while (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            arg = args.*.unnamed_0.unnamed_0.car;
            if ((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(FLOAT)))) {
                return divide_floats(args, @as(f32, @floatFromInt(result)));
            } else if ((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(NUMBER)))) {
                var i: c_int = arg.*.unnamed_0.unnamed_1.unnamed_0.integer;
                _ = &i;
                if (i == @as(c_int, 0)) {
                    error2(@as([*c]const u8, @ptrCast(@alignCast(&divisionbyzero[@as(usize, @intCast(0))]))));
                }
                if (@import("std").zig.c_translation.signedRemainder(result, i) != @as(c_int, 0)) return divide_floats(args, @as(f32, @floatFromInt(result)));
                if ((result == (-@as(c_int, 2147483647) - @as(c_int, 1))) and (i == -@as(c_int, 1))) return divide_floats(args, @as(f32, @floatFromInt(result)));
                result = @divTrunc(result, i);
                args = args.*.unnamed_0.unnamed_0.cdr;
            } else {
                @"error"(@as([*c]const u8, @ptrCast(@alignCast(&notanumber[@as(usize, @intCast(0))]))), arg);
            }
        }
        return number(result);
    } else {
        @"error"(@as([*c]const u8, @ptrCast(@alignCast(&notanumber[@as(usize, @intCast(0))]))), arg);
    }
    return null;
}
pub export fn fn_mod(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return remmod(args, @as(c_int, 1) != 0);
}
pub export fn fn_rem(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return remmod(args, @as(c_int, 0) != 0);
}
pub export fn fn_oneplus(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &arg;
    if ((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(FLOAT)))) return makefloat(@as(f32, @floatCast(@as(f64, @floatCast(arg.*.unnamed_0.unnamed_1.unnamed_0.single_float)) + 1.0))) else if ((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(NUMBER)))) {
        var result: c_int = arg.*.unnamed_0.unnamed_1.unnamed_0.integer;
        _ = &result;
        if (result == @as(c_int, 2147483647)) return makefloat(@as(f32, @floatCast(@as(f64, @floatFromInt(arg.*.unnamed_0.unnamed_1.unnamed_0.integer)) + 1.0))) else return number(result + @as(c_int, 1));
    } else {
        @"error"(@as([*c]const u8, @ptrCast(@alignCast(&notanumber[@as(usize, @intCast(0))]))), arg);
    }
    return null;
}
pub export fn fn_oneminus(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &arg;
    if ((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(FLOAT)))) return makefloat(@as(f32, @floatCast(@as(f64, @floatCast(arg.*.unnamed_0.unnamed_1.unnamed_0.single_float)) - 1.0))) else if ((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(NUMBER)))) {
        var result: c_int = arg.*.unnamed_0.unnamed_1.unnamed_0.integer;
        _ = &result;
        if (result == (-@as(c_int, 2147483647) - @as(c_int, 1))) return makefloat(@as(f32, @floatCast(@as(f64, @floatFromInt(arg.*.unnamed_0.unnamed_1.unnamed_0.integer)) - 1.0))) else return number(result - @as(c_int, 1));
    } else {
        @"error"(@as([*c]const u8, @ptrCast(@alignCast(&notanumber[@as(usize, @intCast(0))]))), arg);
    }
    return null;
}
pub export fn fn_abs(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &arg;
    if ((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(FLOAT)))) return makefloat(@as(f32, @floatCast(fabs(@as(f64, @floatCast(arg.*.unnamed_0.unnamed_1.unnamed_0.single_float)))))) else if ((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(NUMBER)))) {
        var result: c_int = arg.*.unnamed_0.unnamed_1.unnamed_0.integer;
        _ = &result;
        if (result == (-@as(c_int, 2147483647) - @as(c_int, 1))) return makefloat(fabsf(@as(f32, @floatFromInt(result)))) else return number(abs(result));
    } else {
        @"error"(@as([*c]const u8, @ptrCast(@alignCast(&notanumber[@as(usize, @intCast(0))]))), arg);
    }
    return null;
}
pub export fn fn_random(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &arg;
    if ((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(NUMBER)))) return number(@as(c_int, @bitCast(@as(c_int, @truncate(@import("std").zig.c_translation.signedRemainder(random(), @as(c_long, @bitCast(@as(c_long, arg.*.unnamed_0.unnamed_1.unnamed_0.integer))))))))) else if ((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(FLOAT)))) return makefloat(@as(f32, @floatFromInt(rand())) / (@as(f32, @floatFromInt(@as(c_int, 2147483647))) / arg.*.unnamed_0.unnamed_1.unnamed_0.single_float)) else {
        @"error"(@as([*c]const u8, @ptrCast(@alignCast(&notanumber[@as(usize, @intCast(0))]))), arg);
    }
    return null;
}
pub export fn fn_maxfn(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var result: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &result;
    args = args.*.unnamed_0.unnamed_0.cdr;
    while (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
        _ = &arg;
        if (((result != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (result.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(NUMBER)))) and ((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(NUMBER))))) {
            if (arg.*.unnamed_0.unnamed_1.unnamed_0.integer > result.*.unnamed_0.unnamed_1.unnamed_0.integer) {
                result = arg;
            }
        } else if (checkintfloat(arg) > checkintfloat(result)) {
            result = arg;
        }
        args = args.*.unnamed_0.unnamed_0.cdr;
    }
    return result;
}
pub export fn fn_minfn(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var result: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &result;
    args = args.*.unnamed_0.unnamed_0.cdr;
    while (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
        _ = &arg;
        if (((result != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (result.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(NUMBER)))) and ((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(NUMBER))))) {
            if (arg.*.unnamed_0.unnamed_1.unnamed_0.integer < result.*.unnamed_0.unnamed_1.unnamed_0.integer) {
                result = arg;
            }
        } else if (checkintfloat(arg) < checkintfloat(result)) {
            result = arg;
        }
        args = args.*.unnamed_0.unnamed_0.cdr;
    }
    return result;
}
pub export fn fn_noteq(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    while (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var nargs: [*c]object = args;
        _ = &nargs;
        var arg1: [*c]object = nargs.*.unnamed_0.unnamed_0.car;
        _ = &arg1;
        nargs = nargs.*.unnamed_0.unnamed_0.cdr;
        while (nargs != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            var arg2: [*c]object = nargs.*.unnamed_0.unnamed_0.car;
            _ = &arg2;
            if (((arg1 != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg1.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(NUMBER)))) and ((arg2 != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg2.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(NUMBER))))) {
                if (arg1.*.unnamed_0.unnamed_1.unnamed_0.integer == arg2.*.unnamed_0.unnamed_1.unnamed_0.integer) return null;
            } else if (checkintfloat(arg1) == checkintfloat(arg2)) return null;
            nargs = nargs.*.unnamed_0.unnamed_0.cdr;
        }
        args = args.*.unnamed_0.unnamed_0.cdr;
    }
    return tee;
}
pub export fn fn_numeq(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return compare(args, @as(c_int, 0) != 0, @as(c_int, 0) != 0, @as(c_int, 1) != 0);
}
pub export fn fn_less(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return compare(args, @as(c_int, 1) != 0, @as(c_int, 0) != 0, @as(c_int, 0) != 0);
}
pub export fn fn_lesseq(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return compare(args, @as(c_int, 1) != 0, @as(c_int, 0) != 0, @as(c_int, 1) != 0);
}
pub export fn fn_greater(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return compare(args, @as(c_int, 0) != 0, @as(c_int, 1) != 0, @as(c_int, 0) != 0);
}
pub export fn fn_greatereq(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return compare(args, @as(c_int, 0) != 0, @as(c_int, 1) != 0, @as(c_int, 1) != 0);
}
pub export fn fn_plusp(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &arg;
    if ((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(FLOAT)))) return if (@as(f64, @floatCast(arg.*.unnamed_0.unnamed_1.unnamed_0.single_float)) > 0.0) tee else null else if ((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(NUMBER)))) return if (arg.*.unnamed_0.unnamed_1.unnamed_0.integer > @as(c_int, 0)) tee else null else {
        @"error"(@as([*c]const u8, @ptrCast(@alignCast(&notanumber[@as(usize, @intCast(0))]))), arg);
    }
    return null;
}
pub export fn fn_minusp(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &arg;
    if ((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(FLOAT)))) return if (@as(f64, @floatCast(arg.*.unnamed_0.unnamed_1.unnamed_0.single_float)) < 0.0) tee else null else if ((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(NUMBER)))) return if (arg.*.unnamed_0.unnamed_1.unnamed_0.integer < @as(c_int, 0)) tee else null else {
        @"error"(@as([*c]const u8, @ptrCast(@alignCast(&notanumber[@as(usize, @intCast(0))]))), arg);
    }
    return null;
}
pub export fn fn_zerop(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &arg;
    if ((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(FLOAT)))) return if (@as(f64, @floatCast(arg.*.unnamed_0.unnamed_1.unnamed_0.single_float)) == 0.0) tee else null else if ((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(NUMBER)))) return if (arg.*.unnamed_0.unnamed_1.unnamed_0.integer == @as(c_int, 0)) tee else null else {
        @"error"(@as([*c]const u8, @ptrCast(@alignCast(&notanumber[@as(usize, @intCast(0))]))), arg);
    }
    return null;
}
pub export fn fn_oddp(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var arg: c_int = checkinteger(args.*.unnamed_0.unnamed_0.car);
    _ = &arg;
    return if ((arg & @as(c_int, 1)) == @as(c_int, 1)) tee else null;
}
pub export fn fn_evenp(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var arg: c_int = checkinteger(args.*.unnamed_0.unnamed_0.car);
    _ = &arg;
    return if ((arg & @as(c_int, 1)) == @as(c_int, 0)) tee else null;
}
pub export fn fn_integerp(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return if ((args.*.unnamed_0.unnamed_0.car != @as([*c]struct_sobject, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (args.*.unnamed_0.unnamed_0.car.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(NUMBER)))) tee else null;
}
pub export fn fn_numberp(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &arg;
    return if (((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(NUMBER)))) or ((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(FLOAT))))) tee else null;
}
pub export fn fn_floatfn(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &arg;
    return if ((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(FLOAT)))) arg else makefloat(@as(f32, @floatFromInt(arg.*.unnamed_0.unnamed_1.unnamed_0.integer)));
}
pub export fn fn_floatp(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return if ((args.*.unnamed_0.unnamed_0.car != @as([*c]struct_sobject, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (args.*.unnamed_0.unnamed_0.car.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(FLOAT)))) tee else null;
}
pub export fn fn_sin(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return makefloat(@as(f32, @floatCast(sin(@as(f64, @floatCast(checkintfloat(args.*.unnamed_0.unnamed_0.car)))))));
}
pub export fn fn_cos(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return makefloat(@as(f32, @floatCast(cos(@as(f64, @floatCast(checkintfloat(args.*.unnamed_0.unnamed_0.car)))))));
}
pub export fn fn_tan(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return makefloat(@as(f32, @floatCast(tan(@as(f64, @floatCast(checkintfloat(args.*.unnamed_0.unnamed_0.car)))))));
}
pub export fn fn_asin(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return makefloat(@as(f32, @floatCast(asin(@as(f64, @floatCast(checkintfloat(args.*.unnamed_0.unnamed_0.car)))))));
}
pub export fn fn_acos(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return makefloat(@as(f32, @floatCast(acos(@as(f64, @floatCast(checkintfloat(args.*.unnamed_0.unnamed_0.car)))))));
}
pub export fn fn_atan(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &arg;
    var div_1: f32 = @as(f32, @floatCast(1.0));
    _ = &div_1;
    args = args.*.unnamed_0.unnamed_0.cdr;
    if (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        div_1 = checkintfloat(args.*.unnamed_0.unnamed_0.car);
    }
    return makefloat(@as(f32, @floatCast(atan2(@as(f64, @floatCast(checkintfloat(arg))), @as(f64, @floatCast(div_1))))));
}
pub export fn fn_sinh(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return makefloat(@as(f32, @floatCast(sinh(@as(f64, @floatCast(checkintfloat(args.*.unnamed_0.unnamed_0.car)))))));
}
pub export fn fn_cosh(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return makefloat(@as(f32, @floatCast(cosh(@as(f64, @floatCast(checkintfloat(args.*.unnamed_0.unnamed_0.car)))))));
}
pub export fn fn_tanh(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return makefloat(@as(f32, @floatCast(tanh(@as(f64, @floatCast(checkintfloat(args.*.unnamed_0.unnamed_0.car)))))));
}
pub export fn fn_exp(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return makefloat(@as(f32, @floatCast(exp(@as(f64, @floatCast(checkintfloat(args.*.unnamed_0.unnamed_0.car)))))));
}
pub export fn fn_sqrt(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return makefloat(@as(f32, @floatCast(sqrt(@as(f64, @floatCast(checkintfloat(args.*.unnamed_0.unnamed_0.car)))))));
}
pub export fn fn_log(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &arg;
    var fresult: f32 = @as(f32, @floatCast(log(@as(f64, @floatCast(checkintfloat(arg))))));
    _ = &fresult;
    args = args.*.unnamed_0.unnamed_0.cdr;
    if (args == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return makefloat(fresult) else return makefloat(@as(f32, @floatCast(@as(f64, @floatCast(fresult)) / log(@as(f64, @floatCast(checkintfloat(args.*.unnamed_0.unnamed_0.car)))))));
    return null;
}
pub export fn fn_expt(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var arg1: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &arg1;
    var arg2: [*c]object = @as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car;
    _ = &arg2;
    var float1: f32 = checkintfloat(arg1);
    _ = &float1;
    var value_1: f32 = @as(f32, @floatCast(log(fabs(@as(f64, @floatCast(float1)))) * @as(f64, @floatCast(checkintfloat(arg2)))));
    _ = &value_1;
    if (((((arg1 != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg1.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(NUMBER)))) and ((arg2 != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg2.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(NUMBER))))) and (arg2.*.unnamed_0.unnamed_1.unnamed_0.integer >= @as(c_int, 0))) and (fabs(@as(f64, @floatCast(value_1))) < 21.4875)) return number(intpower(arg1.*.unnamed_0.unnamed_1.unnamed_0.integer, arg2.*.unnamed_0.unnamed_1.unnamed_0.integer));
    if (float1 < @as(f32, @floatFromInt(@as(c_int, 0)))) {
        if ((arg2 != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg2.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(NUMBER)))) return makefloat(@as(f32, @floatCast(if ((arg2.*.unnamed_0.unnamed_1.unnamed_0.integer & @as(c_int, 1)) != 0) -exp(@as(f64, @floatCast(value_1))) else exp(@as(f64, @floatCast(value_1)))))) else {
            error2("invalid result");
        }
    }
    return makefloat(@as(f32, @floatCast(exp(@as(f64, @floatCast(value_1))))));
}
pub export fn fn_ceiling(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &arg;
    args = args.*.unnamed_0.unnamed_0.cdr;
    if (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return number(@as(c_int, @intFromFloat(ceil(@as(f64, @floatCast(checkintfloat(arg) / checkintfloat(args.*.unnamed_0.unnamed_0.car))))))) else return number(@as(c_int, @intFromFloat(ceil(@as(f64, @floatCast(checkintfloat(arg)))))));
    return null;
}
pub export fn fn_floor(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &arg;
    args = args.*.unnamed_0.unnamed_0.cdr;
    if (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return number(@as(c_int, @intFromFloat(floor(@as(f64, @floatCast(checkintfloat(arg) / checkintfloat(args.*.unnamed_0.unnamed_0.car))))))) else return number(@as(c_int, @intFromFloat(floor(@as(f64, @floatCast(checkintfloat(arg)))))));
    return null;
}
pub export fn fn_truncate(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &arg;
    args = args.*.unnamed_0.unnamed_0.cdr;
    if (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return number(@as(c_int, @intFromFloat(checkintfloat(arg) / checkintfloat(args.*.unnamed_0.unnamed_0.car)))) else return number(@as(c_int, @intFromFloat(checkintfloat(arg))));
    return null;
}
pub export fn fn_round(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &arg;
    args = args.*.unnamed_0.unnamed_0.cdr;
    if (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return number(@as(c_int, @intFromFloat(round(@as(f64, @floatCast(checkintfloat(arg) / checkintfloat(args.*.unnamed_0.unnamed_0.car))))))) else return number(@as(c_int, @intFromFloat(round(@as(f64, @floatCast(checkintfloat(arg)))))));
    return null;
}
pub export fn fn_char(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &arg;
    if (!((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(STRING))))) {
        @"error"(@as([*c]const u8, @ptrCast(@alignCast(&notastring[@as(usize, @intCast(0))]))), arg);
    }
    var n: [*c]object = @as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car;
    _ = &n;
    var c: u8 = @as(u8, @bitCast(nthchar(arg, checkinteger(n))));
    _ = &c;
    if (@as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, 0)) {
        @"error"(@as([*c]const u8, @ptrCast(@alignCast(&indexrange[@as(usize, @intCast(0))]))), n);
    }
    return character(@as(u8, @bitCast(c)));
}
pub export fn fn_charcode(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return number(checkchar(args.*.unnamed_0.unnamed_0.car));
}
pub export fn fn_codechar(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return character(@as(u8, @bitCast(@as(i8, @truncate(checkinteger(args.*.unnamed_0.unnamed_0.car))))));
}
pub export fn fn_characterp(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return if ((args.*.unnamed_0.unnamed_0.car != @as([*c]struct_sobject, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (args.*.unnamed_0.unnamed_0.car.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(CHARACTER)))) tee else null;
}
pub export fn fn_stringp(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return if ((args.*.unnamed_0.unnamed_0.car != @as([*c]struct_sobject, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (args.*.unnamed_0.unnamed_0.car.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(STRING)))) tee else null;
}
pub export fn fn_stringeq(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var m: c_int = stringcompare(args, @as(c_int, 0) != 0, @as(c_int, 0) != 0, @as(c_int, 1) != 0);
    _ = &m;
    return if (m == -@as(c_int, 1)) null else tee;
}
pub export fn fn_stringless(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var m: c_int = stringcompare(args, @as(c_int, 1) != 0, @as(c_int, 0) != 0, @as(c_int, 0) != 0);
    _ = &m;
    return if (m == -@as(c_int, 1)) null else number(m);
}
pub export fn fn_stringgreater(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var m: c_int = stringcompare(args, @as(c_int, 0) != 0, @as(c_int, 1) != 0, @as(c_int, 0) != 0);
    _ = &m;
    return if (m == -@as(c_int, 1)) null else number(m);
}
pub export fn fn_stringnoteq(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var m: c_int = stringcompare(args, @as(c_int, 1) != 0, @as(c_int, 1) != 0, @as(c_int, 0) != 0);
    _ = &m;
    return if (m == -@as(c_int, 1)) null else number(m);
}
pub export fn fn_stringlesseq(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var m: c_int = stringcompare(args, @as(c_int, 1) != 0, @as(c_int, 0) != 0, @as(c_int, 1) != 0);
    _ = &m;
    return if (m == -@as(c_int, 1)) null else number(m);
}
pub export fn fn_stringgreatereq(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var m: c_int = stringcompare(args, @as(c_int, 0) != 0, @as(c_int, 1) != 0, @as(c_int, 1) != 0);
    _ = &m;
    return if (m == -@as(c_int, 1)) null else number(m);
}
pub export fn fn_sort(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &arg;
    if (!listp(arg)) {
        @"error"(@as([*c]const u8, @ptrCast(@alignCast(&notalist[@as(usize, @intCast(0))]))), arg);
    }
    if (arg == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return null;
    var list: [*c]object = cons(null, arg);
    _ = &list;
    _ = blk: {
        const tmp = cons(list, GCStack);
        GCStack = tmp;
        break :blk tmp;
    };
    var predicate: [*c]object = @as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car;
    _ = &predicate;
    var compare_1: [*c]object = cons(null, cons(null, null));
    _ = &compare_1;
    _ = blk: {
        const tmp = cons(compare_1, GCStack);
        GCStack = tmp;
        break :blk tmp;
    };
    var ptr: [*c]object = list.*.unnamed_0.unnamed_0.cdr;
    _ = &ptr;
    while (ptr.*.unnamed_0.unnamed_0.cdr != @as([*c]struct_sobject, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var go: [*c]object = list;
        _ = &go;
        while (go != ptr) {
            compare_1.*.unnamed_0.unnamed_0.car = @as([*c]object, @ptrCast(@alignCast(ptr.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car;
            @as([*c]object, @ptrCast(@alignCast(compare_1.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car = @as([*c]object, @ptrCast(@alignCast(go.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car;
            if (apply(predicate, compare_1, env) != null) break;
            go = go.*.unnamed_0.unnamed_0.cdr;
        }
        if (go != ptr) {
            var obj: [*c]object = ptr.*.unnamed_0.unnamed_0.cdr;
            _ = &obj;
            ptr.*.unnamed_0.unnamed_0.cdr = obj.*.unnamed_0.unnamed_0.cdr;
            obj.*.unnamed_0.unnamed_0.cdr = go.*.unnamed_0.unnamed_0.cdr;
            go.*.unnamed_0.unnamed_0.cdr = obj;
        } else {
            ptr = ptr.*.unnamed_0.unnamed_0.cdr;
        }
    }
    _ = blk: {
        const tmp = GCStack.*.unnamed_0.unnamed_0.cdr;
        GCStack = tmp;
        break :blk tmp;
    };
    _ = blk: {
        const tmp = GCStack.*.unnamed_0.unnamed_0.cdr;
        GCStack = tmp;
        break :blk tmp;
    };
    return list.*.unnamed_0.unnamed_0.cdr;
}
pub export fn fn_stringfn(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    return fn_princtostring(args, env);
}
pub export fn fn_concatenate(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &arg;
    if (builtin(arg.*.unnamed_0.unnamed_1.unnamed_0.name) != @as(builtin_t, @bitCast(@as(c_long, STRINGFN)))) {
        error2("only supports strings");
    }
    args = args.*.unnamed_0.unnamed_0.cdr;
    var result: [*c]object = newstring();
    _ = &result;
    var tail: [*c]object = result;
    _ = &tail;
    while (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var obj: [*c]object = checkstring(args.*.unnamed_0.unnamed_0.car);
        _ = &obj;
        obj = obj.*.unnamed_0.unnamed_0.cdr;
        while (obj != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            var quad: c_int = @as(c_int, @bitCast(@as(c_uint, @truncate(obj.*.unnamed_0.unnamed_1.unnamed_0.chars))));
            _ = &quad;
            while (quad != @as(c_int, 0)) {
                var ch: u8 = @as(u8, @bitCast(@as(i8, @truncate((quad >> @intCast((@sizeOf(c_int) -% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 1))))) *% @as(c_ulong, @bitCast(@as(c_long, @as(c_int, 8)))))) & @as(c_int, 255)))));
                _ = &ch;
                buildstring(ch, &tail);
                quad = quad << @intCast(8);
            }
            obj = obj.*.unnamed_0.unnamed_0.car;
        }
        args = args.*.unnamed_0.unnamed_0.cdr;
    }
    return result;
}
pub export fn fn_subseq(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &arg;
    var start: c_int = checkinteger(@as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car);
    _ = &start;
    var end: c_int = undefined;
    _ = &end;
    if (start < @as(c_int, 0)) {
        @"error"(@as([*c]const u8, @ptrCast(@alignCast(&indexnegative[@as(usize, @intCast(0))]))), @as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car);
    }
    args = @as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.cdr;
    if (listp(arg)) {
        var length: c_int = listlength(arg);
        _ = &length;
        if (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            end = checkinteger(args.*.unnamed_0.unnamed_0.car);
        } else {
            end = length;
        }
        if ((start > end) or (end > length)) {
            error2(@as([*c]const u8, @ptrCast(@alignCast(&indexrange[@as(usize, @intCast(0))]))));
        }
        var result: [*c]object = cons(null, null);
        _ = &result;
        var ptr: [*c]object = result;
        _ = &ptr;
        {
            var x: c_int = 0;
            _ = &x;
            while (x < end) : (x += 1) {
                if (x >= start) {
                    ptr.*.unnamed_0.unnamed_0.cdr = cons(arg.*.unnamed_0.unnamed_0.car, null);
                    ptr = ptr.*.unnamed_0.unnamed_0.cdr;
                }
                arg = arg.*.unnamed_0.unnamed_0.cdr;
            }
        }
        return result.*.unnamed_0.unnamed_0.cdr;
    } else if ((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(STRING)))) {
        var length: c_int = stringlength(arg);
        _ = &length;
        if (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            end = checkinteger(args.*.unnamed_0.unnamed_0.car);
        } else {
            end = length;
        }
        if ((start > end) or (end > length)) {
            error2(@as([*c]const u8, @ptrCast(@alignCast(&indexrange[@as(usize, @intCast(0))]))));
        }
        var result: [*c]object = newstring();
        _ = &result;
        var tail: [*c]object = result;
        _ = &tail;
        {
            var i: c_int = start;
            _ = &i;
            while (i < end) : (i += 1) {
                var ch: u8 = @as(u8, @bitCast(nthchar(arg, i)));
                _ = &ch;
                buildstring(ch, &tail);
            }
        }
        return result;
    } else {
        error2("argument is not a list or string");
    }
    return null;
}
pub export fn fn_search(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var pattern: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &pattern;
    var target: [*c]object = @as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car;
    _ = &target;
    if (pattern == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return number(@as(c_int, 0)) else if (target == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return null else if ((@as(c_int, @intFromBool(listp(pattern))) != 0) and (@as(c_int, @intFromBool(listp(target))) != 0)) {
        var @"test": [*c]object = testargument(@as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.cdr);
        _ = &@"test";
        var l: c_int = listlength(target);
        _ = &l;
        var m: c_int = listlength(pattern);
        _ = &m;
        {
            var i: c_int = 0;
            _ = &i;
            while (i <= (l - m)) : (i += 1) {
                var target1: [*c]object = target;
                _ = &target1;
                while ((pattern != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (apply(@"test", cons(target1.*.unnamed_0.unnamed_0.car, cons(pattern.*.unnamed_0.unnamed_0.car, null)), env) != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))))) {
                    pattern = pattern.*.unnamed_0.unnamed_0.cdr;
                    target1 = target1.*.unnamed_0.unnamed_0.cdr;
                }
                if (pattern == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return number(i);
                pattern = args.*.unnamed_0.unnamed_0.car;
                target = target.*.unnamed_0.unnamed_0.cdr;
            }
        }
        return null;
    } else if (((pattern != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (pattern.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(STRING)))) and ((target != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (target.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(STRING))))) {
        if (@as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.cdr != @as([*c]struct_sobject, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            error2("keyword argument not supported for strings");
        }
        var l: c_int = stringlength(target);
        _ = &l;
        var m: c_int = stringlength(pattern);
        _ = &m;
        {
            var i: c_int = 0;
            _ = &i;
            while (i <= (l - m)) : (i += 1) {
                var j: c_int = 0;
                _ = &j;
                while ((j < m) and (@as(c_int, @bitCast(@as(c_uint, nthchar(target, i + j)))) == @as(c_int, @bitCast(@as(c_uint, nthchar(pattern, j)))))) {
                    j += 1;
                }
                if (j == m) return number(i);
            }
        }
        return null;
    } else {
        error2("arguments are not both lists or strings");
    }
    return null;
}
pub export fn fn_readfromstring(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var arg: [*c]object = checkstring(args.*.unnamed_0.unnamed_0.car);
    _ = &arg;
    GlobalString = arg;
    GlobalStringIndex = 0;
    var val: [*c]object = sread(&gstr);
    _ = &val;
    LastChar = 0;
    return val;
}
pub export fn fn_prin1tostring(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &arg;
    var obj: [*c]object = startstring();
    _ = &obj;
    printobject(arg, &pstr);
    return obj;
}
pub export fn fn_logand(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var result: c_int = -@as(c_int, 1);
    _ = &result;
    while (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        result = result & checkinteger(args.*.unnamed_0.unnamed_0.car);
        args = args.*.unnamed_0.unnamed_0.cdr;
    }
    return number(result);
}
pub export fn fn_logior(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var result: c_int = 0;
    _ = &result;
    while (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        result = result | checkinteger(args.*.unnamed_0.unnamed_0.car);
        args = args.*.unnamed_0.unnamed_0.cdr;
    }
    return number(result);
}
pub export fn fn_logxor(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var result: c_int = 0;
    _ = &result;
    while (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        result = result ^ checkinteger(args.*.unnamed_0.unnamed_0.car);
        args = args.*.unnamed_0.unnamed_0.cdr;
    }
    return number(result);
}
pub export fn fn_lognot(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var result: c_int = checkinteger(args.*.unnamed_0.unnamed_0.car);
    _ = &result;
    return number(~result);
}
pub export fn fn_ash(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var value_1: c_int = checkinteger(args.*.unnamed_0.unnamed_0.car);
    _ = &value_1;
    var count: c_int = checkinteger(@as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car);
    _ = &count;
    if (count >= @as(c_int, 0)) return number(value_1 << @intCast(count)) else return number(value_1 >> @intCast(abs(count)));
    return null;
}
pub export fn fn_logbitp(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var index_1: c_int = checkinteger(args.*.unnamed_0.unnamed_0.car);
    _ = &index_1;
    var value_2: c_int = checkinteger(@as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car);
    _ = &value_2;
    return if (((value_2 >> @intCast(index_1)) & @as(c_int, 1)) == @as(c_int, 1)) tee else null;
}
pub export fn fn_eval(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    return eval(args.*.unnamed_0.unnamed_0.car, env);
}
pub export fn fn_return(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    _ = blk: {
        const tmp = @as(flags_t, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_uint, Flags))) | (@as(c_int, 1) << @intCast(RETURNFLAG))))));
        Flags = tmp;
        break :blk tmp;
    };
    if (args == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return null else return args.*.unnamed_0.unnamed_0.car;
    return null;
}
pub export fn fn_globals(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = blk: {
        _ = &args;
        break :blk env;
    };
    var result: [*c]object = cons(null, null);
    _ = &result;
    var ptr: [*c]object = result;
    _ = &ptr;
    var arg: [*c]object = GlobalEnv;
    _ = &arg;
    while (arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        ptr.*.unnamed_0.unnamed_0.cdr = cons(@as([*c]object, @ptrCast(@alignCast(arg.*.unnamed_0.unnamed_0.car))).*.unnamed_0.unnamed_0.car, null);
        ptr = ptr.*.unnamed_0.unnamed_0.cdr;
        arg = arg.*.unnamed_0.unnamed_0.cdr;
    }
    return result.*.unnamed_0.unnamed_0.cdr;
}
pub export fn fn_locals(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &args;
    return env;
}
pub export fn fn_makunbound(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var @"var": [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &@"var";
    if (!((@"var" != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (@"var".*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(SYMBOL))))) {
        @"error"(@as([*c]const u8, @ptrCast(@alignCast(&notasymbol[@as(usize, @intCast(0))]))), @"var");
    }
    _ = delassoc(@"var", &GlobalEnv);
    return @"var";
}
pub export fn fn_break(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &args;
    pfstring("\nBreak!\n", &pserial);
    BreakLevel +%= 1;
    repl(env);
    BreakLevel -%= 1;
    return null;
}
pub export fn fn_read(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    return null;
}
pub export fn fn_prin1(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var obj: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &obj;
    var pfun: pfun_t = pstreamfun(args.*.unnamed_0.unnamed_0.cdr);
    _ = &pfun;
    printobject(obj, pfun);
    return obj;
}
pub export fn fn_print(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var obj: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &obj;
    var pfun: pfun_t = pstreamfun(args.*.unnamed_0.unnamed_0.cdr);
    _ = &pfun;
    pln(pfun);
    printobject(obj, pfun);
    pfun.?(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, ' '))))));
    return obj;
}
pub export fn fn_princ(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var obj: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &obj;
    var pfun: pfun_t = pstreamfun(args.*.unnamed_0.unnamed_0.cdr);
    _ = &pfun;
    prin1object(obj, pfun);
    return obj;
}
pub export fn fn_terpri(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var pfun: pfun_t = pstreamfun(args);
    _ = &pfun;
    pln(pfun);
    return null;
}
pub export fn fn_readbyte(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    return null;
}
pub export fn fn_readline(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    return null;
}
pub export fn fn_writebyte(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var c: c_int = checkinteger(args.*.unnamed_0.unnamed_0.car);
    _ = &c;
    var pfun: pfun_t = pstreamfun(args.*.unnamed_0.unnamed_0.cdr);
    _ = &pfun;
    if ((c == @as(c_int, '\n')) and (pfun == &pserial)) {
        _ = putchar(@as(c_int, '\n'));
    } else {
        pfun.?(@as(u8, @bitCast(@as(i8, @truncate(c)))));
    }
    return null;
}
pub export fn fn_writestring(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var obj: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &obj;
    var pfun: pfun_t = pstreamfun(args.*.unnamed_0.unnamed_0.cdr);
    _ = &pfun;
    var temp: flags_t = Flags;
    _ = &temp;
    _ = blk: {
        const tmp = @as(flags_t, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_uint, Flags))) & ~(@as(c_int, 1) << @intCast(PRINTREADABLY))))));
        Flags = tmp;
        break :blk tmp;
    };
    printstring(obj, pfun);
    Flags = temp;
    return null;
}
pub export fn fn_writeline(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var obj: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &obj;
    var pfun: pfun_t = pstreamfun(args.*.unnamed_0.unnamed_0.cdr);
    _ = &pfun;
    var temp: flags_t = Flags;
    _ = &temp;
    _ = blk: {
        const tmp = @as(flags_t, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_uint, Flags))) & ~(@as(c_int, 1) << @intCast(PRINTREADABLY))))));
        Flags = tmp;
        break :blk tmp;
    };
    printstring(obj, pfun);
    pln(pfun);
    Flags = temp;
    return null;
}
pub export fn fn_restarti2c(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    {
        _ = printf("TODO: fn_restarti2c\r\n");
        return null;
    }
}
pub export fn fn_gc(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    if ((args == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) or (args.*.unnamed_0.unnamed_0.car != @as([*c]struct_sobject, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))))) {
        var initial: c_int = @as(c_int, @bitCast(Freespace));
        _ = &initial;
        var start: c_ulong = @as(c_ulong, @bitCast(micros()));
        _ = &start;
        gc(args, env);
        var elapsed: c_ulong = @as(c_ulong, @bitCast(micros())) -% start;
        _ = &elapsed;
        pfstring("Space: ", &pserial);
        pint(@as(c_int, @bitCast(Freespace -% @as(c_uint, @bitCast(initial)))), &pserial);
        pfstring(" bytes, Time: ", &pserial);
        pint(@as(c_int, @bitCast(@as(c_uint, @truncate(elapsed)))), &pserial);
        pfstring(" us\n", &pserial);
    } else {
        gc(args, env);
    }
    return null;
}
pub export fn fn_room(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = blk: {
        _ = &args;
        break :blk env;
    };
    return number(@as(c_int, @bitCast(Freespace)));
}
pub export fn fn_backtrace(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    if (args == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return if ((@as(c_int, @bitCast(@as(c_uint, Flags))) & (@as(c_int, 1) << @intCast(BACKTRACE))) != 0) tee else null;
    if (args.*.unnamed_0.unnamed_0.car == @as([*c]struct_sobject, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        _ = blk: {
            const tmp = @as(flags_t, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_uint, Flags))) & ~(@as(c_int, 1) << @intCast(BACKTRACE))))));
            Flags = tmp;
            break :blk tmp;
        };
    } else {
        _ = blk: {
            const tmp = @as(flags_t, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_uint, Flags))) | (@as(c_int, 1) << @intCast(BACKTRACE))))));
            Flags = tmp;
            break :blk tmp;
        };
    }
    return args.*.unnamed_0.unnamed_0.car;
}
pub export fn fn_saveimage(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    if (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        args = eval(args.*.unnamed_0.unnamed_0.car, env);
    }
    return number(@as(c_int, @bitCast(saveimage(args))));
}
pub export fn fn_loadimage(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    if (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        args = args.*.unnamed_0.unnamed_0.car;
    }
    return number(@as(c_int, @bitCast(loadimage(args))));
}
pub export fn fn_cls(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = blk: {
        _ = &args;
        break :blk env;
    };
    pserial(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 12))))));
    return null;
}
pub export fn fn_pinmode(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var pin: c_int = undefined;
    _ = &pin;
    var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &arg;
    if (keywordp(arg)) {
        pin = checkkeyword(arg);
    } else {
        pin = checkinteger(args.*.unnamed_0.unnamed_0.car);
    }
    var pm: c_int = 2;
    _ = &pm;
    arg = @as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car;
    if (keywordp(arg)) {
        pm = checkkeyword(arg);
    } else if ((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(NUMBER)))) {
        var mode: c_int = arg.*.unnamed_0.unnamed_1.unnamed_0.integer;
        _ = &mode;
        if (mode == @as(c_int, 1)) {
            pm = 5;
        } else if (mode == @as(c_int, 2)) {
            pm = 3;
        } else if (mode == @as(c_int, 4)) {
            pm = 4;
        }
    } else if (arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        pm = 5;
    }
    pinMode(pin, pm);
    return null;
}
pub export fn fn_digitalread(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var pin: c_int = undefined;
    _ = &pin;
    var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &arg;
    if (keywordp(arg)) {
        pin = checkkeyword(arg);
    } else {
        pin = checkinteger(arg);
    }
    if (digitalRead(pin) != @as(c_int, 0)) return tee else return null;
    return null;
}
pub export fn fn_digitalwrite(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var pin: c_int = undefined;
    _ = &pin;
    var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &arg;
    if (keywordp(arg)) {
        pin = checkkeyword(arg);
    } else {
        pin = checkinteger(arg);
    }
    arg = @as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car;
    var mode: c_int = undefined;
    _ = &mode;
    if (keywordp(arg)) {
        mode = checkkeyword(arg);
    } else if ((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(NUMBER)))) {
        mode = if (arg.*.unnamed_0.unnamed_1.unnamed_0.integer != 0) @as(c_int, 1) else @as(c_int, 0);
    } else {
        mode = if (arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) @as(c_int, 1) else @as(c_int, 0);
    }
    digitalWrite(pin, mode);
    return arg;
}
pub export fn fn_analogread(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var pin: c_int = undefined;
    _ = &pin;
    var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &arg;
    if (keywordp(arg)) {
        pin = checkkeyword(arg);
    } else {
        pin = checkinteger(arg);
        checkanalogread(pin);
    }
    return number(@as(c_int, @intFromFloat(analogRead(pin))));
}
pub export fn fn_analogreadresolution(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &arg;
    error2("not supported");
    return arg;
}
pub export fn fn_analogwrite(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var pin: c_int = undefined;
    _ = &pin;
    var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &arg;
    if (keywordp(arg)) {
        pin = checkkeyword(arg);
    } else {
        pin = checkinteger(arg);
    }
    checkanalogwrite(pin);
    var value_1: [*c]object = @as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car;
    _ = &value_1;
    analogWrite(pin, @as(f64, @floatFromInt(checkinteger(value_1))));
    return value_1;
}
pub export fn fn_delay(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var arg1: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &arg1;
    var start: c_ulong = @as(c_ulong, @intFromFloat(millis()));
    _ = &start;
    var total: c_uint = @as(c_uint, @bitCast(checkinteger(arg1)));
    _ = &total;
    while ((millis() - @as(f64, @floatFromInt(start))) < @as(f64, @floatFromInt(total))) {
        yield_loop();
    }
    return arg1;
}
pub export fn fn_millis(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = blk: {
        _ = &args;
        break :blk env;
    };
    return number(@as(c_int, @intFromFloat(millis())));
}
pub export fn fn_sleep(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var arg1: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &arg1;
    doze(checkinteger(arg1));
    return arg1;
}
pub export fn fn_note(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    const pin = struct {
        var static: c_int = 255;
    };
    _ = &pin;
    if (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        pin.static = checkinteger(args.*.unnamed_0.unnamed_0.car);
        var note: c_int = 48;
        _ = &note;
        var octave: c_int = 0;
        _ = &octave;
        if (args.*.unnamed_0.unnamed_0.cdr != @as([*c]struct_sobject, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            note = checkinteger(@as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car);
            if (@as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.cdr != @as([*c]struct_sobject, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
                octave = checkinteger(@as([*c]object, @ptrCast(@alignCast(@as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car);
            }
        }
        playnote(pin.static, note, octave);
    } else {
        nonote(pin.static);
    }
    return null;
}
pub export fn fn_register(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &arg;
    var addr: usize = undefined;
    _ = &addr;
    if (keywordp(arg)) {
        addr = @as(usize, @bitCast(@as(c_long, checkkeyword(arg))));
    } else {
        addr = @as(usize, @bitCast(@as(c_long, checkinteger(args.*.unnamed_0.unnamed_0.car))));
    }
    if (args.*.unnamed_0.unnamed_0.cdr == @as([*c]struct_sobject, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return number(@as(c_int, @bitCast(@as([*c]u32, @ptrFromInt(addr)).*)));
    @as([*c]u32, @ptrFromInt(addr)).* = @as(u32, @bitCast(checkinteger(@as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car)));
    return @as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car;
}
pub export fn fn_edit(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    var fun: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &fun;
    var pair: [*c]object = findvalue(fun, env);
    _ = &pair;
    _ = blk: {
        const tmp = @as(flags_t, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_uint, Flags))) & ~(@as(c_int, 1) << @intCast(EXITEDITOR))))));
        Flags = tmp;
        break :blk tmp;
    };
    var arg: [*c]object = edit(eval(fun, env));
    _ = &arg;
    pair.*.unnamed_0.unnamed_0.cdr = arg;
    return arg;
}
pub export fn fn_pprint(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var obj: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &obj;
    var pfun: pfun_t = pstreamfun(args.*.unnamed_0.unnamed_0.cdr);
    _ = &pfun;
    pln(pfun);
    superprint(obj, @as(c_int, 0), pfun);
    ppwidth = PPWIDTH;
    return bsymbol(@as(builtin_t, @bitCast(@as(c_long, NOTHING))));
}
pub export fn fn_pprintall(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var pfun: pfun_t = pstreamfun(args);
    _ = &pfun;
    var globals: [*c]object = GlobalEnv;
    _ = &globals;
    while (globals != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var pair: [*c]object = globals.*.unnamed_0.unnamed_0.car;
        _ = &pair;
        var @"var": [*c]object = pair.*.unnamed_0.unnamed_0.car;
        _ = &@"var";
        var val: [*c]object = pair.*.unnamed_0.unnamed_0.cdr;
        _ = &val;
        pln(pfun);
        if (((@as(c_int, @intFromBool(consp(val))) != 0) and ((val.*.unnamed_0.unnamed_0.car != @as([*c]struct_sobject, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (val.*.unnamed_0.unnamed_0.car.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(SYMBOL))))) and (builtin(val.*.unnamed_0.unnamed_0.car.*.unnamed_0.unnamed_1.unnamed_0.name) == @as(builtin_t, @bitCast(@as(c_long, LAMBDA))))) {
            superprint(cons(bsymbol(@as(builtin_t, @bitCast(@as(c_long, DEFUN)))), cons(@"var", val.*.unnamed_0.unnamed_0.cdr)), @as(c_int, 0), pfun);
        } else {
            superprint(cons(bsymbol(@as(builtin_t, @bitCast(@as(c_long, DEFVAR)))), cons(@"var", cons(quote(val), null))), @as(c_int, 0), pfun);
        }
        pln(pfun);
        yield_loop();
        globals = globals.*.unnamed_0.unnamed_0.cdr;
    }
    ppwidth = PPWIDTH;
    return bsymbol(@as(builtin_t, @bitCast(@as(c_long, NOTHING))));
}
pub export fn fn_format(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    var pfun: pfun_t = &pserial;
    _ = &pfun;
    var output: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &output;
    var obj: [*c]object = undefined;
    _ = &obj;
    if (output == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        obj = startstring();
        pfun = &pstr;
    } else if (!eq(output, tee)) {
        pfun = pstreamfun(args);
    }
    var formatstr: [*c]object = checkstring(@as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car);
    _ = &formatstr;
    var save: [*c]object = null;
    _ = &save;
    args = @as([*c]object, @ptrCast(@alignCast(args.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.cdr;
    var len: c_int = stringlength(formatstr);
    _ = &len;
    var n: u16 = 0;
    _ = &n;
    var width: u16 = 0;
    _ = &width;
    var w: u16 = undefined;
    _ = &w;
    var bra: u16 = 0;
    _ = &bra;
    var pad: u8 = ' ';
    _ = &pad;
    var tilde: bool = @as(c_int, 0) != 0;
    _ = &tilde;
    var mute: bool = @as(c_int, 0) != 0;
    _ = &mute;
    var comma: bool = @as(c_int, 0) != 0;
    _ = &comma;
    var quote_1: bool = @as(c_int, 0) != 0;
    _ = &quote_1;
    while (@as(c_int, @bitCast(@as(c_uint, n))) < len) {
        var ch: u8 = @as(u8, @bitCast(nthchar(formatstr, @as(c_int, @bitCast(@as(c_uint, n))))));
        _ = &ch;
        var ch2: u8 = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, @bitCast(@as(c_uint, ch))) & ~@as(c_int, 32)))));
        _ = &ch2;
        if (tilde) {
            if (@as(c_int, @bitCast(@as(c_uint, ch))) == @as(c_int, '}')) {
                if (save == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
                    formaterr(formatstr, "no matching ~{", @as(u8, @bitCast(@as(u8, @truncate(n)))));
                }
                if (args == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
                    args = save.*.unnamed_0.unnamed_0.cdr;
                    save = null;
                } else {
                    n = bra;
                }
                mute = @as(c_int, 0) != 0;
                tilde = @as(c_int, 0) != 0;
            } else if (!mute) {
                if ((@as(c_int, @intFromBool(comma)) != 0) and (@as(c_int, @intFromBool(quote_1)) != 0)) {
                    pad = ch;
                    _ = blk: {
                        comma = @as(c_int, 0) != 0;
                        break :blk blk_1: {
                            const tmp = @as(c_int, 0) != 0;
                            quote_1 = tmp;
                            break :blk_1 tmp;
                        };
                    };
                } else if (@as(c_int, @bitCast(@as(c_uint, ch))) == @as(c_int, '\'')) {
                    if (comma) {
                        quote_1 = @as(c_int, 1) != 0;
                    } else {
                        formaterr(formatstr, "quote not valid", @as(u8, @bitCast(@as(u8, @truncate(n)))));
                    }
                } else if (@as(c_int, @bitCast(@as(c_uint, ch))) == @as(c_int, '~')) {
                    pfun.?(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '~'))))));
                    tilde = @as(c_int, 0) != 0;
                } else if ((@as(c_int, @bitCast(@as(c_uint, ch))) >= @as(c_int, '0')) and (@as(c_int, @bitCast(@as(c_uint, ch))) <= @as(c_int, '9'))) {
                    width = @as(u16, @bitCast(@as(c_short, @truncate(((@as(c_int, @bitCast(@as(c_uint, width))) * @as(c_int, 10)) + @as(c_int, @bitCast(@as(c_uint, ch)))) - @as(c_int, '0')))));
                } else if (@as(c_int, @bitCast(@as(c_uint, ch))) == @as(c_int, ',')) {
                    comma = @as(c_int, 1) != 0;
                } else if (@as(c_int, @bitCast(@as(c_uint, ch))) == @as(c_int, '%')) {
                    pln(pfun);
                    tilde = @as(c_int, 0) != 0;
                } else if (@as(c_int, @bitCast(@as(c_uint, ch))) == @as(c_int, '&')) {
                    pfl(pfun);
                    tilde = @as(c_int, 0) != 0;
                } else if (@as(c_int, @bitCast(@as(c_uint, ch))) == @as(c_int, '^')) {
                    if ((save != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (args == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0)))))))) {
                        mute = @as(c_int, 1) != 0;
                    }
                    tilde = @as(c_int, 0) != 0;
                } else if (@as(c_int, @bitCast(@as(c_uint, ch))) == @as(c_int, '{')) {
                    if (save != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
                        formaterr(formatstr, "can't nest ~{", @as(u8, @bitCast(@as(u8, @truncate(n)))));
                    }
                    if (args == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
                        formaterr(formatstr, @as([*c]const u8, @ptrCast(@alignCast(&noargument[@as(usize, @intCast(0))]))), @as(u8, @bitCast(@as(u8, @truncate(n)))));
                    }
                    if (!listp(args.*.unnamed_0.unnamed_0.car)) {
                        formaterr(formatstr, @as([*c]const u8, @ptrCast(@alignCast(&notalist[@as(usize, @intCast(0))]))), @as(u8, @bitCast(@as(u8, @truncate(n)))));
                    }
                    save = args;
                    args = args.*.unnamed_0.unnamed_0.car;
                    bra = n;
                    tilde = @as(c_int, 0) != 0;
                    if (args == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
                        mute = @as(c_int, 1) != 0;
                    }
                } else if ((((((@as(c_int, @bitCast(@as(c_uint, ch2))) == @as(c_int, 'A')) or (@as(c_int, @bitCast(@as(c_uint, ch2))) == @as(c_int, 'S'))) or (@as(c_int, @bitCast(@as(c_uint, ch2))) == @as(c_int, 'D'))) or (@as(c_int, @bitCast(@as(c_uint, ch2))) == @as(c_int, 'G'))) or (@as(c_int, @bitCast(@as(c_uint, ch2))) == @as(c_int, 'X'))) or (@as(c_int, @bitCast(@as(c_uint, ch2))) == @as(c_int, 'B'))) {
                    if (args == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
                        formaterr(formatstr, @as([*c]const u8, @ptrCast(@alignCast(&noargument[@as(usize, @intCast(0))]))), @as(u8, @bitCast(@as(u8, @truncate(n)))));
                    }
                    var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
                    _ = &arg;
                    args = args.*.unnamed_0.unnamed_0.cdr;
                    var aw: u8 = atomwidth(arg);
                    _ = &aw;
                    if (@as(c_int, @bitCast(@as(c_uint, width))) < @as(c_int, @bitCast(@as(c_uint, aw)))) {
                        w = 0;
                    } else {
                        w = @as(u16, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_uint, width))) - @as(c_int, @bitCast(@as(c_uint, aw)))))));
                    }
                    tilde = @as(c_int, 0) != 0;
                    if (@as(c_int, @bitCast(@as(c_uint, ch2))) == @as(c_int, 'A')) {
                        prin1object(arg, pfun);
                        indent(@as(u8, @bitCast(@as(u8, @truncate(w)))), pad, pfun);
                    } else if (@as(c_int, @bitCast(@as(c_uint, ch2))) == @as(c_int, 'S')) {
                        printobject(arg, pfun);
                        indent(@as(u8, @bitCast(@as(u8, @truncate(w)))), pad, pfun);
                    } else if ((@as(c_int, @bitCast(@as(c_uint, ch2))) == @as(c_int, 'D')) or (@as(c_int, @bitCast(@as(c_uint, ch2))) == @as(c_int, 'G'))) {
                        indent(@as(u8, @bitCast(@as(u8, @truncate(w)))), pad, pfun);
                        prin1object(arg, pfun);
                    } else if ((@as(c_int, @bitCast(@as(c_uint, ch2))) == @as(c_int, 'X')) or (@as(c_int, @bitCast(@as(c_uint, ch2))) == @as(c_int, 'B'))) {
                        if ((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(NUMBER)))) {
                            var base: u8 = @as(u8, @bitCast(@as(i8, @truncate(if (@as(c_int, @bitCast(@as(c_uint, ch2))) == @as(c_int, 'B')) @as(c_int, 2) else @as(c_int, 16)))));
                            _ = &base;
                            var hw: u8 = basewidth(arg, base);
                            _ = &hw;
                            if (@as(c_int, @bitCast(@as(c_uint, width))) < @as(c_int, @bitCast(@as(c_uint, hw)))) {
                                w = 0;
                            } else {
                                w = @as(u16, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_uint, width))) - @as(c_int, @bitCast(@as(c_uint, hw)))))));
                            }
                            indent(@as(u8, @bitCast(@as(u8, @truncate(w)))), pad, pfun);
                            pintbase(@as(u32, @bitCast(arg.*.unnamed_0.unnamed_1.unnamed_0.integer)), base, pfun);
                        } else {
                            indent(@as(u8, @bitCast(@as(u8, @truncate(w)))), pad, pfun);
                            prin1object(arg, pfun);
                        }
                    }
                    tilde = @as(c_int, 0) != 0;
                } else {
                    formaterr(formatstr, "invalid directive", @as(u8, @bitCast(@as(u8, @truncate(n)))));
                }
            }
        } else {
            if (@as(c_int, @bitCast(@as(c_uint, ch))) == @as(c_int, '~')) {
                tilde = @as(c_int, 1) != 0;
                pad = ' ';
                width = 0;
                comma = @as(c_int, 0) != 0;
                quote_1 = @as(c_int, 0) != 0;
            } else if (!mute) {
                pfun.?(ch);
            }
        }
        n +%= 1;
    }
    if (output == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) return obj else return null;
    return null;
}
pub export fn fn_require(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    var arg: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &arg;
    var globals: [*c]object = GlobalEnv;
    _ = &globals;
    if (!((arg != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (arg.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(SYMBOL))))) {
        @"error"(@as([*c]const u8, @ptrCast(@alignCast(&notasymbol[@as(usize, @intCast(0))]))), arg);
    }
    while (globals != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var pair: [*c]object = globals.*.unnamed_0.unnamed_0.car;
        _ = &pair;
        var @"var": [*c]object = pair.*.unnamed_0.unnamed_0.car;
        _ = &@"var";
        if (((@"var" != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (@"var".*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(SYMBOL)))) and (@"var" == arg)) return null;
        globals = globals.*.unnamed_0.unnamed_0.cdr;
    }
    GlobalStringIndex = 0;
    var line: [*c]object = readmain(&glibrary);
    _ = &line;
    while (line != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var fname: symbol_t = line.*.unnamed_0.unnamed_0.car.*.unnamed_0.unnamed_1.unnamed_0.name;
        _ = &fname;
        if ((((fname == sym(@as(builtin_t, @bitCast(@as(c_long, DEFUN))))) or (fname == sym(@as(builtin_t, @bitCast(@as(c_long, DEFVAR)))))) and ((@as([*c]object, @ptrCast(@alignCast(line.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car != @as([*c]struct_sobject, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (@as([*c]object, @ptrCast(@alignCast(line.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car.*.unnamed_0.unnamed_1.type == @as(c_uint, @bitCast(SYMBOL))))) and (@as([*c]object, @ptrCast(@alignCast(line.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car.*.unnamed_0.unnamed_1.unnamed_0.name == arg.*.unnamed_0.unnamed_1.unnamed_0.name)) {
            _ = eval(line, env);
            return tee;
        }
        line = readmain(&glibrary);
    }
    return null;
}
pub export fn fn_listlibrary(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = blk: {
        _ = &args;
        break :blk env;
    };
    GlobalStringIndex = 0;
    var line: [*c]object = readmain(&glibrary);
    _ = &line;
    while (line != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        var bname: builtin_t = builtin(line.*.unnamed_0.unnamed_0.car.*.unnamed_0.unnamed_1.unnamed_0.name);
        _ = &bname;
        if ((bname == @as(builtin_t, @bitCast(@as(c_long, DEFUN)))) or (bname == @as(builtin_t, @bitCast(@as(c_long, DEFVAR))))) {
            printsymbol(@as([*c]object, @ptrCast(@alignCast(line.*.unnamed_0.unnamed_0.cdr))).*.unnamed_0.unnamed_0.car, &pserial);
            pserial(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, ' '))))));
        }
        line = readmain(&glibrary);
    }
    return bsymbol(@as(builtin_t, @bitCast(@as(c_long, NOTHING))));
}
pub export fn sp_help(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    if (args == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        error2(@as([*c]const u8, @ptrCast(@alignCast(&noargument[@as(usize, @intCast(0))]))));
    }
    var docstring: [*c]object = documentation(args.*.unnamed_0.unnamed_0.car, env);
    _ = &docstring;
    if (docstring != null) {
        var temp: flags_t = Flags;
        _ = &temp;
        _ = blk: {
            const tmp = @as(flags_t, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_uint, Flags))) & ~(@as(c_int, 1) << @intCast(PRINTREADABLY))))));
            Flags = tmp;
            break :blk tmp;
        };
        printstring(docstring, &pserial);
        Flags = temp;
    }
    return bsymbol(@as(builtin_t, @bitCast(@as(c_long, NOTHING))));
}
pub export fn fn_documentation(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    return documentation(args.*.unnamed_0.unnamed_0.car, env);
}
pub export fn fn_apropos(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    _ = apropos(args.*.unnamed_0.unnamed_0.car, @as(c_int, 1) != 0);
    return bsymbol(@as(builtin_t, @bitCast(@as(c_long, NOTHING))));
}
pub export fn fn_aproposlist(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    return apropos(args.*.unnamed_0.unnamed_0.car, @as(c_int, 0) != 0);
}
pub export fn sp_unwindprotect(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    if (args == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        error2(@as([*c]const u8, @ptrCast(@alignCast(&toofewargs[@as(usize, @intCast(0))]))));
    }
    var current_GCStack: [*c]object = GCStack;
    _ = &current_GCStack;
    var dynamic_handler: jmp_buf = undefined;
    _ = &dynamic_handler;
    var previous_handler: [*c]jmp_buf = handler;
    _ = &previous_handler;
    handler = &dynamic_handler;
    var protected_form: [*c]object = args.*.unnamed_0.unnamed_0.car;
    _ = &protected_form;
    var result: [*c]object = undefined;
    _ = &result;
    var signaled: bool = @as(c_int, 0) != 0;
    _ = &signaled;
    if (!(_setjmp(@as([*c]struct___jmp_buf_tag, @ptrCast(@alignCast(&dynamic_handler[@as(usize, @intCast(0))])))) != 0)) {
        result = eval(protected_form, env);
    } else {
        GCStack = current_GCStack;
        signaled = @as(c_int, 1) != 0;
    }
    handler = previous_handler;
    var protective_forms: [*c]object = args.*.unnamed_0.unnamed_0.cdr;
    _ = &protective_forms;
    while (protective_forms != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        _ = eval(protective_forms.*.unnamed_0.unnamed_0.car, env);
        if ((@as(c_int, @bitCast(@as(c_uint, Flags))) & (@as(c_int, 1) << @intCast(RETURNFLAG))) != 0) break;
        protective_forms = protective_forms.*.unnamed_0.unnamed_0.cdr;
    }
    if (!signaled) return result;
    GCStack = null;
    longjmp(@as([*c]struct___jmp_buf_tag, @ptrCast(@alignCast(&handler.*[@as(usize, @intCast(0))]))), @as(c_int, 1));
    return null;
}
pub export fn sp_ignoreerrors(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    var current_GCStack: [*c]object = GCStack;
    _ = &current_GCStack;
    var dynamic_handler: jmp_buf = undefined;
    _ = &dynamic_handler;
    var previous_handler: [*c]jmp_buf = handler;
    _ = &previous_handler;
    handler = &dynamic_handler;
    var result: [*c]object = null;
    _ = &result;
    var muffled: bool = (@as(c_int, @bitCast(@as(c_uint, Flags))) & (@as(c_int, 1) << @intCast(MUFFLEERRORS))) != 0;
    _ = &muffled;
    _ = blk: {
        const tmp = @as(flags_t, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_uint, Flags))) | (@as(c_int, 1) << @intCast(MUFFLEERRORS))))));
        Flags = tmp;
        break :blk tmp;
    };
    var signaled: bool = @as(c_int, 0) != 0;
    _ = &signaled;
    if (!(_setjmp(@as([*c]struct___jmp_buf_tag, @ptrCast(@alignCast(&dynamic_handler[@as(usize, @intCast(0))])))) != 0)) {
        while (args != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
            result = eval(args.*.unnamed_0.unnamed_0.car, env);
            if ((@as(c_int, @bitCast(@as(c_uint, Flags))) & (@as(c_int, 1) << @intCast(RETURNFLAG))) != 0) break;
            args = args.*.unnamed_0.unnamed_0.cdr;
        }
    } else {
        GCStack = current_GCStack;
        signaled = @as(c_int, 1) != 0;
    }
    handler = previous_handler;
    if (!muffled) {
        _ = blk: {
            const tmp = @as(flags_t, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_uint, Flags))) & ~(@as(c_int, 1) << @intCast(MUFFLEERRORS))))));
            Flags = tmp;
            break :blk tmp;
        };
    }
    if (signaled) return bsymbol(@as(builtin_t, @bitCast(@as(c_long, NOTHING)))) else return result;
    return null;
}
pub export fn sp_error(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    var message: [*c]object = eval(cons(bsymbol(@as(builtin_t, @bitCast(@as(c_long, FORMAT)))), cons(null, args)), env);
    _ = &message;
    if (!((@as(c_int, @bitCast(@as(c_uint, Flags))) & (@as(c_int, 1) << @intCast(MUFFLEERRORS))) != 0)) {
        var temp: flags_t = Flags;
        _ = &temp;
        _ = blk: {
            const tmp = @as(flags_t, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_uint, Flags))) & ~(@as(c_int, 1) << @intCast(PRINTREADABLY))))));
            Flags = tmp;
            break :blk tmp;
        };
        pfstring("Error: ", &pserial);
        printstring(message, &pserial);
        Flags = temp;
        pln(&pserial);
    }
    GCStack = null;
    longjmp(@as([*c]struct___jmp_buf_tag, @ptrCast(@alignCast(&handler.*[@as(usize, @intCast(0))]))), @as(c_int, 1));
    return null;
}
pub export fn fn_directory(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = blk: {
        _ = &args;
        break :blk env;
    };
    error2("not supported");
    return null;
}
pub export fn sp_withclient(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    {
        _ = printf("TODO: sp_withclient\r\n");
        return null;
    }
}
pub export fn fn_available(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    {
        _ = printf("TODO: fn_available\r\n");
        return null;
    }
}
pub export fn fn_wifiserver(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    {
        _ = printf("TODO: fn_wifiserver\r\n");
        return null;
    }
}
pub export fn fn_wifisoftap(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    {
        _ = printf("TODO: fn_wifisoftap\r\n");
        return null;
    }
}
pub export fn fn_connected(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    {
        _ = printf("TODO: fn_connected\r\n");
        return null;
    }
}
pub export fn fn_wifilocalip(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    {
        _ = printf("TODO: fn_wifilocalip\r\n");
        return null;
    }
}
pub export fn fn_wificonnect(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    {
        _ = printf("TODO: fn_wificonnect\r\n");
        return null;
    }
}
pub export fn sp_withgfx(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = blk: {
        _ = &args;
        break :blk env;
    };
    error2("not supported");
    return null;
}
pub export fn fn_drawpixel(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    _ = &args;
    return null;
}
pub export fn fn_drawline(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    _ = &args;
    return null;
}
pub export fn fn_drawrect(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    _ = &args;
    return null;
}
pub export fn fn_fillrect(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    _ = &args;
    return null;
}
pub export fn fn_drawcircle(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    _ = &args;
    return null;
}
pub export fn fn_fillcircle(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    _ = &args;
    return null;
}
pub export fn fn_drawroundrect(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    _ = &args;
    return null;
}
pub export fn fn_fillroundrect(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    _ = &args;
    return null;
}
pub export fn fn_drawtriangle(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    _ = &args;
    return null;
}
pub export fn fn_filltriangle(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    _ = &args;
    return null;
}
pub export fn fn_drawchar(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    _ = &args;
    return null;
}
pub export fn fn_setcursor(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    _ = &args;
    return null;
}
pub export fn fn_settextcolor(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    _ = &args;
    return null;
}
pub export fn fn_settextsize(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    _ = &args;
    return null;
}
pub export fn fn_settextwrap(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    _ = &args;
    return null;
}
pub export fn fn_fillscreen(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    _ = &args;
    return null;
}
pub export fn fn_setrotation(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    _ = &args;
    return null;
}
pub export fn fn_invertdisplay(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = &env;
    _ = &args;
    return null;
}
pub export fn fn_display(arg_args: [*c]object, arg_env: [*c]object) [*c]object {
    var args = arg_args;
    _ = &args;
    var env = arg_env;
    _ = &env;
    _ = blk: {
        _ = &args;
        break :blk env;
    };
    return null;
}
pub export const string0: [3:0]u8 = "nil".*;
pub export const string1: [1:0]u8 = "t".*;
pub export const string2: [7:0]u8 = "nothing".*;
pub export const string3: [9:0]u8 = "&optional".*;
pub export const string4: [10:0]u8 = "*features*".*;
pub export const string5: [16:0]u8 = ":initial-element".*;
pub export const string6: [13:0]u8 = ":element-type".*;
pub export const string7: [5:0]u8 = ":test".*;
pub export const string8: [2:0]u8 = ":a".*;
pub export const string9: [2:0]u8 = ":b".*;
pub export const string10: [2:0]u8 = ":c".*;
pub export const string11: [3:0]u8 = "bit".*;
pub export const string12: [5:0]u8 = "&rest".*;
pub export const string13: [6:0]u8 = "lambda".*;
pub export const string14: [3:0]u8 = "let".*;
pub export const string15: [4:0]u8 = "let*".*;
pub export const string16: [7:0]u8 = "closure".*;
pub export const string17: [4:0]u8 = "*pc*".*;
pub export const string18: [5:0]u8 = "quote".*;
pub export const string19: [5:0]u8 = "defun".*;
pub export const string20: [6:0]u8 = "defvar".*;
pub export const string21: [2:0]u8 = "eq".*;
pub export const string22: [3:0]u8 = "car".*;
pub export const string23: [5:0]u8 = "first".*;
pub export const string24: [3:0]u8 = "cdr".*;
pub export const string25: [4:0]u8 = "rest".*;
pub export const string26: [3:0]u8 = "nth".*;
pub export const string27: [4:0]u8 = "aref".*;
pub export const string28: [4:0]u8 = "char".*;
pub export const string29: [6:0]u8 = "string".*;
pub export const string30: [7:0]u8 = "pinmode".*;
pub export const string31: [12:0]u8 = "digitalwrite".*;
pub export const string32: [10:0]u8 = "analogread".*;
pub export const string33: [8:0]u8 = "register".*;
pub export const string34: [6:0]u8 = "format".*;
pub export const string35: [2:0]u8 = "or".*;
pub export const string36: [4:0]u8 = "setq".*;
pub export const string37: [4:0]u8 = "loop".*;
pub export const string38: [4:0]u8 = "push".*;
pub export const string39: [3:0]u8 = "pop".*;
pub export const string40: [4:0]u8 = "incf".*;
pub export const string41: [4:0]u8 = "decf".*;
pub export const string42: [4:0]u8 = "setf".*;
pub export const string43: [6:0]u8 = "dolist".*;
pub export const string44: [7:0]u8 = "dotimes".*;
pub export const string45: [2:0]u8 = "do".*;
pub export const string46: [3:0]u8 = "do*".*;
pub export const string47: [5:0]u8 = "trace".*;
pub export const string48: [7:0]u8 = "untrace".*;
pub export const string49: [10:0]u8 = "for-millis".*;
pub export const string50: [4:0]u8 = "time".*;
pub export const string51: [21:0]u8 = "with-output-to-string".*;
pub export const string52: [11:0]u8 = "with-serial".*;
pub export const string53: [8:0]u8 = "with-i2c".*;
pub export const string54: [8:0]u8 = "with-spi".*;
pub export const string55: [12:0]u8 = "with-sd-card".*;
pub export const string56: [5:0]u8 = "progn".*;
pub export const string57: [2:0]u8 = "if".*;
pub export const string58: [4:0]u8 = "cond".*;
pub export const string59: [4:0]u8 = "when".*;
pub export const string60: [6:0]u8 = "unless".*;
pub export const string61: [4:0]u8 = "case".*;
pub export const string62: [3:0]u8 = "and".*;
pub export const string63: [3:0]u8 = "not".*;
pub export const string64: [4:0]u8 = "null".*;
pub export const string65: [4:0]u8 = "cons".*;
pub export const string66: [4:0]u8 = "atom".*;
pub export const string67: [5:0]u8 = "listp".*;
pub export const string68: [5:0]u8 = "consp".*;
pub export const string69: [7:0]u8 = "symbolp".*;
pub export const string70: [6:0]u8 = "arrayp".*;
pub export const string71: [6:0]u8 = "boundp".*;
pub export const string72: [8:0]u8 = "keywordp".*;
pub export const string73: [3:0]u8 = "set".*;
pub export const string74: [7:0]u8 = "streamp".*;
pub export const string75: [5:0]u8 = "equal".*;
pub export const string76: [4:0]u8 = "caar".*;
pub export const string77: [4:0]u8 = "cadr".*;
pub export const string78: [6:0]u8 = "second".*;
pub export const string79: [4:0]u8 = "cdar".*;
pub export const string80: [4:0]u8 = "cddr".*;
pub export const string81: [5:0]u8 = "caaar".*;
pub export const string82: [5:0]u8 = "caadr".*;
pub export const string83: [5:0]u8 = "cadar".*;
pub export const string84: [5:0]u8 = "caddr".*;
pub export const string85: [5:0]u8 = "third".*;
pub export const string86: [5:0]u8 = "cdaar".*;
pub export const string87: [5:0]u8 = "cdadr".*;
pub export const string88: [5:0]u8 = "cddar".*;
pub export const string89: [5:0]u8 = "cdddr".*;
pub export const string90: [6:0]u8 = "length".*;
pub export const string91: [16:0]u8 = "array-dimensions".*;
pub export const string92: [4:0]u8 = "list".*;
pub export const string93: [9:0]u8 = "copy-list".*;
pub export const string94: [10:0]u8 = "make-array".*;
pub export const string95: [7:0]u8 = "reverse".*;
pub export const string96: [5:0]u8 = "assoc".*;
pub export const string97: [6:0]u8 = "member".*;
pub export const string98: [5:0]u8 = "apply".*;
pub export const string99: [7:0]u8 = "funcall".*;
pub export const string100: [6:0]u8 = "append".*;
pub export const string101: [4:0]u8 = "mapc".*;
pub export const string102: [4:0]u8 = "mapl".*;
pub export const string103: [6:0]u8 = "mapcar".*;
pub export const string104: [6:0]u8 = "mapcan".*;
pub export const string105: [7:0]u8 = "maplist".*;
pub export const string106: [6:0]u8 = "mapcon".*;
pub export const string107: [1:0]u8 = "+".*;
pub export const string108: [1:0]u8 = "-".*;
pub export const string109: [1:0]u8 = "*".*;
pub export const string110: [1:0]u8 = "/".*;
pub export const string111: [3:0]u8 = "mod".*;
pub export const string112: [3:0]u8 = "rem".*;
pub export const string113: [2:0]u8 = "1+".*;
pub export const string114: [2:0]u8 = "1-".*;
pub export const string115: [3:0]u8 = "abs".*;
pub export const string116: [6:0]u8 = "random".*;
pub export const string117: [3:0]u8 = "max".*;
pub export const string118: [3:0]u8 = "min".*;
pub export const string119: [2:0]u8 = "/=".*;
pub export const string120: [1:0]u8 = "=".*;
pub export const string121: [1:0]u8 = "<".*;
pub export const string122: [2:0]u8 = "<=".*;
pub export const string123: [1:0]u8 = ">".*;
pub export const string124: [2:0]u8 = ">=".*;
pub export const string125: [5:0]u8 = "plusp".*;
pub export const string126: [6:0]u8 = "minusp".*;
pub export const string127: [5:0]u8 = "zerop".*;
pub export const string128: [4:0]u8 = "oddp".*;
pub export const string129: [5:0]u8 = "evenp".*;
pub export const string130: [8:0]u8 = "integerp".*;
pub export const string131: [7:0]u8 = "numberp".*;
pub export const string132: [5:0]u8 = "float".*;
pub export const string133: [6:0]u8 = "floatp".*;
pub export const string134: [3:0]u8 = "sin".*;
pub export const string135: [3:0]u8 = "cos".*;
pub export const string136: [3:0]u8 = "tan".*;
pub export const string137: [4:0]u8 = "asin".*;
pub export const string138: [4:0]u8 = "acos".*;
pub export const string139: [4:0]u8 = "atan".*;
pub export const string140: [4:0]u8 = "sinh".*;
pub export const string141: [4:0]u8 = "cosh".*;
pub export const string142: [4:0]u8 = "tanh".*;
pub export const string143: [3:0]u8 = "exp".*;
pub export const string144: [4:0]u8 = "sqrt".*;
pub export const string145: [3:0]u8 = "log".*;
pub export const string146: [4:0]u8 = "expt".*;
pub export const string147: [7:0]u8 = "ceiling".*;
pub export const string148: [5:0]u8 = "floor".*;
pub export const string149: [8:0]u8 = "truncate".*;
pub export const string150: [5:0]u8 = "round".*;
pub export const string151: [9:0]u8 = "char-code".*;
pub export const string152: [9:0]u8 = "code-char".*;
pub export const string153: [10:0]u8 = "characterp".*;
pub export const string154: [7:0]u8 = "stringp".*;
pub export const string155: [7:0]u8 = "string=".*;
pub export const string156: [7:0]u8 = "string<".*;
pub export const string157: [7:0]u8 = "string>".*;
pub export const string158: [8:0]u8 = "string/=".*;
pub export const string159: [8:0]u8 = "string<=".*;
pub export const string160: [8:0]u8 = "string>=".*;
pub export const string161: [4:0]u8 = "sort".*;
pub export const string162: [11:0]u8 = "concatenate".*;
pub export const string163: [6:0]u8 = "subseq".*;
pub export const string164: [6:0]u8 = "search".*;
pub export const string165: [16:0]u8 = "read-from-string".*;
pub export const string166: [15:0]u8 = "princ-to-string".*;
pub export const string167: [15:0]u8 = "prin1-to-string".*;
pub export const string168: [6:0]u8 = "logand".*;
pub export const string169: [6:0]u8 = "logior".*;
pub export const string170: [6:0]u8 = "logxor".*;
pub export const string171: [6:0]u8 = "lognot".*;
pub export const string172: [3:0]u8 = "ash".*;
pub export const string173: [7:0]u8 = "logbitp".*;
pub export const string174: [4:0]u8 = "eval".*;
pub export const string175: [6:0]u8 = "return".*;
pub export const string176: [7:0]u8 = "globals".*;
pub export const string177: [6:0]u8 = "locals".*;
pub export const string178: [10:0]u8 = "makunbound".*;
pub export const string179: [5:0]u8 = "break".*;
pub export const string180: [4:0]u8 = "read".*;
pub export const string181: [5:0]u8 = "prin1".*;
pub export const string182: [5:0]u8 = "print".*;
pub export const string183: [5:0]u8 = "princ".*;
pub export const string184: [6:0]u8 = "terpri".*;
pub export const string185: [9:0]u8 = "read-byte".*;
pub export const string186: [9:0]u8 = "read-line".*;
pub export const string187: [10:0]u8 = "write-byte".*;
pub export const string188: [12:0]u8 = "write-string".*;
pub export const string189: [10:0]u8 = "write-line".*;
pub export const string190: [11:0]u8 = "restart-i2c".*;
pub export const string191: [2:0]u8 = "gc".*;
pub export const string192: [4:0]u8 = "room".*;
pub export const string193: [9:0]u8 = "backtrace".*;
pub export const string194: [10:0]u8 = "save-image".*;
pub export const string195: [10:0]u8 = "load-image".*;
pub export const string196: [3:0]u8 = "cls".*;
pub export const string197: [11:0]u8 = "digitalread".*;
pub export const string198: [20:0]u8 = "analogreadresolution".*;
pub export const string199: [11:0]u8 = "analogwrite".*;
pub export const string200: [5:0]u8 = "delay".*;
pub export const string201: [6:0]u8 = "millis".*;
pub export const string202: [5:0]u8 = "sleep".*;
pub export const string203: [4:0]u8 = "note".*;
pub export const string204: [4:0]u8 = "edit".*;
pub export const string205: [6:0]u8 = "pprint".*;
pub export const string206: [9:0]u8 = "pprintall".*;
pub export const string207: [7:0]u8 = "require".*;
pub export const string208: [12:0]u8 = "list-library".*;
pub export const string209: [1:0]u8 = "?".*;
pub export const string210: [13:0]u8 = "documentation".*;
pub export const string211: [7:0]u8 = "apropos".*;
pub export const string212: [12:0]u8 = "apropos-list".*;
pub export const string213: [14:0]u8 = "unwind-protect".*;
pub export const string214: [13:0]u8 = "ignore-errors".*;
pub export const string215: [5:0]u8 = "error".*;
pub export const string216: [9:0]u8 = "directory".*;
pub export const string217: [11:0]u8 = "with-client".*;
pub export const string218: [9:0]u8 = "available".*;
pub export const string219: [11:0]u8 = "wifi-server".*;
pub export const string220: [11:0]u8 = "wifi-softap".*;
pub export const string221: [9:0]u8 = "connected".*;
pub export const string222: [12:0]u8 = "wifi-localip".*;
pub export const string223: [12:0]u8 = "wifi-connect".*;
pub export const string224: [8:0]u8 = "with-gfx".*;
pub export const string225: [10:0]u8 = "draw-pixel".*;
pub export const string226: [9:0]u8 = "draw-line".*;
pub export const string227: [9:0]u8 = "draw-rect".*;
pub export const string228: [9:0]u8 = "fill-rect".*;
pub export const string229: [11:0]u8 = "draw-circle".*;
pub export const string230: [11:0]u8 = "fill-circle".*;
pub export const string231: [15:0]u8 = "draw-round-rect".*;
pub export const string232: [15:0]u8 = "fill-round-rect".*;
pub export const string233: [13:0]u8 = "draw-triangle".*;
pub export const string234: [13:0]u8 = "fill-triangle".*;
pub export const string235: [9:0]u8 = "draw-char".*;
pub export const string236: [10:0]u8 = "set-cursor".*;
pub export const string237: [14:0]u8 = "set-text-color".*;
pub export const string238: [13:0]u8 = "set-text-size".*;
pub export const string239: [13:0]u8 = "set-text-wrap".*;
pub export const string240: [11:0]u8 = "fill-screen".*;
pub export const string241: [12:0]u8 = "set-rotation".*;
pub export const string242: [14:0]u8 = "invert-display".*;
pub export const string243: [7:0]u8 = "display".*;
pub export const string244: [12:0]u8 = ":led-builtin".*;
pub export const string245: [5:0]u8 = ":high".*;
pub export const string246: [4:0]u8 = ":low".*;
pub export const string247: [6:0]u8 = ":input".*;
pub export const string248: [13:0]u8 = ":input-pullup".*;
pub export const string249: [15:0]u8 = ":input-pulldown".*;
pub export const string250: [7:0]u8 = ":output".*;
pub export const doc0: [68:0]u8 = "nil\nA symbol equivalent to the empty list (). Also represents false.".*;
pub export const doc1: [29:0]u8 = "t\nA symbol representing true.".*;
pub export const doc2: [114:0]u8 = "nothing\nA symbol with no value.\nIt is useful if you want to suppress printing the result of evaluating a function.".*;
pub export const doc3: [97:0]u8 = "&optional\nCan be followed by one or more optional parameters in a lambda or defun parameter list.".*;
pub export const doc4: [87:0]u8 = "*features*\nReturns a list of keywords representing features supported by this platform.".*;
pub export const doc12: [128:0]u8 = "&rest\nCan be followed by a parameter in a lambda or defun parameter list,\nand is assigned a list of the corresponding arguments.".*;
pub export const doc13: [216:0]u8 = "(lambda (parameter*) form*)\nCreates an unnamed function with parameters. The body is evaluated with the parameters as local variables\nwhose initial values are defined by the values of the forms after the lambda form.".*;
pub export const doc14: [121:0]u8 = "(let ((var value) ... ) forms*)\nDeclares local variables with values, and evaluates the forms with those local variables.".*;
pub export const doc15: [212:0]u8 = "(let* ((var value) ... ) forms*)\nDeclares local variables with values, and evaluates the forms with those local variables.\nEach declaration can refer to local variables that have been defined earlier in the let*.".*;
pub export const doc19: [51:0]u8 = "(defun name (parameters) form*)\nDefines a function.".*;
pub export const doc20: [49:0]u8 = "(defvar variable form)\nDefines a global variable.".*;
pub export const doc21: [162:0]u8 = "(eq item item)\nTests whether the two arguments are the same symbol, same character, equal numbers,\nor point to the same cons, and returns t or nil as appropriate.".*;
pub export const doc22: [44:0]u8 = "(car list)\nReturns the first item in a list.".*;
pub export const doc23: [65:0]u8 = "(first list)\nReturns the first item in a list. Equivalent to car.".*;
pub export const doc24: [54:0]u8 = "(cdr list)\nReturns a list with the first item removed.".*;
pub export const doc25: [74:0]u8 = "(rest list)\nReturns a list with the first item removed. Equivalent to cdr.".*;
pub export const doc26: [67:0]u8 = "(nth number list)\nReturns the nth item in list, counting from zero.".*;
pub export const doc27: [72:0]u8 = "(aref array index [index*])\nReturns an element from the specified array.".*;
pub export const doc28: [74:0]u8 = "(char string n)\nReturns the nth character in a string, counting from zero.".*;
pub export const doc29: [48:0]u8 = "(string item)\nConverts its argument to a string.".*;
pub export const doc30: [150:0]u8 = "(pinmode pin mode)\nSets the input/output mode of an Arduino pin number, and returns nil.\nThe mode parameter can be an integer, a keyword, or t or nil.".*;
pub export const doc31: [76:0]u8 = "(digitalwrite pin state)\nSets the state of the specified Arduino pin number.".*;
pub export const doc32: [87:0]u8 = "(analogread pin)\nReads the specified Arduino analogue pin number and returns the value.".*;
pub export const doc33: [265:0]u8 = "(register address [value])\nReads or writes the value of a peripheral register.\nIf value is not specified the function returns the value of the register at address.\nIf value is specified the value is written to the register at address and the function returns value.".*;
pub export const doc34: [127:0]u8 = "(format output controlstring [arguments]*)\nOutputs its arguments formatted according to the format directives in controlstring.".*;
pub export const doc35: [84:0]u8 = "(or item*)\nEvaluates its arguments until one returns non-nil, and returns its value.".*;
pub export const doc36: [152:0]u8 = "(setq symbol value [symbol value]*)\nFor each pair of arguments assigns the value of the second argument\nto the variable specified in the first argument.".*;
pub export const doc37: [131:0]u8 = "(loop forms*)\nExecutes its arguments repeatedly until one of the arguments calls (return),\nwhich then causes an exit from the loop.".*;
pub export const doc38: [136:0]u8 = "(push item place)\nModifies the value of place, which should be a list, to add item onto the front of the list,\nand returns the new list.".*;
pub export const doc39: [121:0]u8 = "(pop place)\nModifies the value of place, which should be a non-nil list, to remove its first item,\nand returns that item.".*;
pub export const doc40: [166:0]u8 = "(incf place [number])\nIncrements a place, which should have an numeric value, and returns the result.\nThe third argument is an optional increment which defaults to 1.".*;
pub export const doc41: [166:0]u8 = "(decf place [number])\nDecrements a place, which should have an numeric value, and returns the result.\nThe third argument is an optional decrement which defaults to 1.".*;
pub export const doc42: [112:0]u8 = "(setf place value [place value]*)\nFor each pair of arguments modifies a place to the result of evaluating value.".*;
pub export const doc43: [172:0]u8 = "(dolist (var list [result]) form*)\nSets the local variable var to each element of list in turn, and executes the forms.\nIt then returns result, or nil if result is omitted.".*;
pub export const doc44: [199:0]u8 = "(dotimes (var number [result]) form*)\nExecutes the forms number times, with the local variable var set to each integer from 0 to number-1 in turn.\nIt then returns result, or nil if result is omitted.".*;
pub export const doc45: [229:0]u8 = "(do ((var [init [step]])*) (end-test result*) form*)\nAccepts an arbitrary number of iteration vars, which are initialised to init and stepped by step sequentially.\nThe forms are executed until end-test is true. It returns result.".*;
pub export const doc46: [229:0]u8 = "(do* ((var [init [step]])*) (end-test result*) form*)\nAccepts an arbitrary number of iteration vars, which are initialised to init and stepped by step in parallel.\nThe forms are executed until end-test is true. It returns result.".*;
pub export const doc47: [138:0]u8 = "(trace [function]*)\nTurns on tracing of up to TRACEMAX user-defined functions,\nand returns a list of the functions currently being traced.".*;
pub export const doc48: [184:0]u8 = "(untrace [function]*)\nTurns off tracing of up to TRACEMAX user-defined functions, and returns a list of the functions untraced.\nIf no functions are specified it untraces all functions.".*;
pub export const doc49: [162:0]u8 = "(for-millis ([number]) form*)\nExecutes the forms and then waits until a total of number milliseconds have elapsed.\nReturns the total number of milliseconds taken.".*;
pub export const doc50: [118:0]u8 = "(time form)\nPrints the value returned by the form, and the time taken to evaluate the form\nin milliseconds or seconds.".*;
pub export const doc51: [102:0]u8 = "(with-output-to-string (str) form*)\nReturns a string containing the output to the stream variable str.".*;
pub export const doc52: [169:0]u8 = "(with-serial (str port [baud]) form*)\nEvaluates the forms with str bound to a serial-stream using port.\nThe optional baud gives the baud rate divided by 100, default 96.".*;
pub export const doc53: [321:0]u8 = "(with-i2c (str [port] address [read-p]) form*)\nEvaluates the forms with str bound to an i2c-stream defined by address.\nIf read-p is nil or omitted the stream is written to, otherwise it specifies the number of bytes\nto be read from the stream. If port is omitted it defaults to 0, otherwise it specifies the port, 0 or 1.".*;
pub export const doc54: [255:0]u8 = "(with-spi (str pin [clock] [bitorder] [mode]) form*)\nEvaluates the forms with str bound to an spi-stream.\nThe parameters specify the enable pin, clock in kHz (default 4000),\nbitorder 0 for LSBFIRST and 1 for MSBFIRST (default 1), and SPI mode (default 0).".*;
pub export const doc55: [238:0]u8 = "(with-sd-card (str filename [mode]) form*)\nEvaluates the forms with str bound to an sd-stream reading from or writing to the file filename.\nIf mode is omitted the file is read, otherwise 0 means read, 1 write-append, or 2 write-overwrite.".*;
pub export const doc56: [120:0]u8 = "(progn form*)\nEvaluates several forms grouped together into a block, and returns the result of evaluating the last form.".*;
pub export const doc57: [145:0]u8 = "(if test then [else])\nEvaluates test. If it's non-nil the form then is evaluated and returned;\notherwise the form else is evaluated and returned.".*;
pub export const doc58: [357:0]u8 = "(cond ((test form*) (test form*) ... ))\nEach argument is a list consisting of a test optionally followed by one or more forms.\nIf the test evaluates to non-nil the forms are evaluated, and the last value is returned as the result of the cond.\nIf the test evaluates to nil, none of the forms are evaluated, and the next argument is processed in the same way.".*;
pub export const doc59: [109:0]u8 = "(when test form*)\nEvaluates the test. If it's non-nil the forms are evaluated and the last value is returned.".*;
pub export const doc60: [107:0]u8 = "(unless test form*)\nEvaluates the test. If it's nil the forms are evaluated and the last value is returned.".*;
pub export const doc61: [222:0]u8 = "(case keyform ((key form*) (key form*) ... ))\nEvaluates a keyform to produce a test key, and then tests this against a series of arguments,\neach of which is a list containing a key optionally followed by one or more forms.".*;
pub export const doc62: [86:0]u8 = "(and item*)\nEvaluates its arguments until one returns nil, and returns the last value.".*;
pub export const doc63: [82:0]u8 = "(not item)\nReturns t if its argument is nil, or nil otherwise. Equivalent to null.".*;
pub export const doc64: [82:0]u8 = "(null list)\nReturns t if its argument is nil, or nil otherwise. Equivalent to not.".*;
pub export const doc65: [180:0]u8 = "(cons item item)\nIf the second argument is a list, cons returns a new list with item added to the front of the list.\nIf the second argument isn't a list cons returns a dotted pair.".*;
pub export const doc66: [73:0]u8 = "(atom item)\nReturns t if its argument is a single number, symbol, or nil.".*;
pub export const doc67: [49:0]u8 = "(listp item)\nReturns t if its argument is a list.".*;
pub export const doc68: [58:0]u8 = "(consp item)\nReturns t if its argument is a non-null list.".*;
pub export const doc69: [53:0]u8 = "(symbolp item)\nReturns t if its argument is a symbol.".*;
pub export const doc70: [52:0]u8 = "(arrayp item)\nReturns t if its argument is an array.".*;
pub export const doc71: [65:0]u8 = "(boundp item)\nReturns t if its argument is a symbol with a value.".*;
pub export const doc72: [80:0]u8 = "(keywordp item)\nReturns t if its argument is a built-in or user-defined keyword.".*;
pub export const doc73: [139:0]u8 = "(set symbol value [symbol value]*)\nFor each pair of arguments, assigns the value of the second argument to the value of the first argument.".*;
pub export const doc74: [53:0]u8 = "(streamp item)\nReturns t if its argument is a stream.".*;
pub export const doc75: [165:0]u8 = "(equal item item)\nTests whether the two arguments are the same symbol, same character, equal numbers,\nor point to the same cons, and returns t or nil as appropriate.".*;
pub export const doc76: [11:0]u8 = "(caar list)".*;
pub export const doc77: [11:0]u8 = "(cadr list)".*;
pub export const doc78: [68:0]u8 = "(second list)\nReturns the second item in a list. Equivalent to cadr.".*;
pub export const doc79: [43:0]u8 = "(cdar list)\nEquivalent to (cdr (car list)).".*;
pub export const doc80: [43:0]u8 = "(cddr list)\nEquivalent to (cdr (cdr list)).".*;
pub export const doc81: [50:0]u8 = "(caaar list)\nEquivalent to (car (car (car list))).".*;
pub export const doc82: [51:0]u8 = "(caadr list)\nEquivalent to (car (car (cdar list))).".*;
pub export const doc83: [50:0]u8 = "(cadar list)\nEquivalent to (car (cdr (car list))).".*;
pub export const doc84: [50:0]u8 = "(caddr list)\nEquivalent to (car (cdr (cdr list))).".*;
pub export const doc85: [67:0]u8 = "(third list)\nReturns the third item in a list. Equivalent to caddr.".*;
pub export const doc86: [51:0]u8 = "(cdaar list)\nEquivalent to (cdar (car (car list))).".*;
pub export const doc87: [50:0]u8 = "(cdadr list)\nEquivalent to (cdr (car (cdr list))).".*;
pub export const doc88: [50:0]u8 = "(cddar list)\nEquivalent to (cdr (cdr (car list))).".*;
pub export const doc89: [50:0]u8 = "(cdddr list)\nEquivalent to (cdr (cdr (cdr list))).".*;
pub export const doc90: [118:0]u8 = "(length item)\nReturns the number of items in a list, the length of a string, or the length of a one-dimensional array.".*;
pub export const doc91: [69:0]u8 = "(array-dimensions item)\nReturns a list of the dimensions of an array.".*;
pub export const doc92: [59:0]u8 = "(list item*)\nReturns a list of the values of its arguments.".*;
pub export const doc93: [42:0]u8 = "(copy-list list)\nReturns a copy of a list.".*;
pub export const doc94: [304:0]u8 = "(make-array size [:initial-element element] [:element-type 'bit])\nIf size is an integer it creates a one-dimensional array with elements from 0 to size-1.\nIf size is a list of n integers it creates an n-dimensional array with those dimensions.\nIf :element-type 'bit is specified the array is a bit array.".*;
pub export const doc95: [73:0]u8 = "(reverse list)\nReturns a list with the elements of list in reverse order.".*;
pub export const doc96: [195:0]u8 = "(assoc key list [:test function])\nLooks up a key in an association list of (key . value) pairs, using eq or the specified test function,\nand returns the matching pair, or nil if no pair is found.".*;
pub export const doc97: [204:0]u8 = "(member item list [:test function])\nSearches for an item in a list, using eq or the specified test function, and returns the list starting\nfrom the first occurrence of the item, or nil if it is not found.".*;
pub export const doc98: [126:0]u8 = "(apply function list)\nReturns the result of evaluating function, with the list of arguments specified by the second parameter.".*;
pub export const doc99: [77:0]u8 = "(funcall function argument*)\nEvaluates function with the specified arguments.".*;
pub export const doc100: [78:0]u8 = "(append list*)\nJoins its arguments, which should be lists, into a single list.".*;
pub export const doc101: [146:0]u8 = "(mapc function list1 [list]*)\nApplies the function to each element in one or more lists, ignoring the results.\nIt returns the first list argument.".*;
pub export const doc102: [170:0]u8 = "(mapl function list1 [list]*)\nApplies the function to one or more lists and then successive cdrs of those lists,\nignoring the results. It returns the first list argument.".*;
pub export const doc103: [122:0]u8 = "(mapcar function list1 [list]*)\nApplies the function to each element in one or more lists, and returns the resulting list.".*;
pub export const doc104: [197:0]u8 = "(mapcan function list1 [list]*)\nApplies the function to each element in one or more lists. The results should be lists,\nand these are destructively concatenated together to give the value returned.".*;
pub export const doc105: [147:0]u8 = "(maplist function list1 [list]*)\nApplies the function to one or more lists and then successive cdrs of those lists,\nand returns the resulting list.".*;
pub export const doc106: [192:0]u8 = "(mapcon function list1 [list]*)\nApplies the function to one or more lists and then successive cdrs of those lists,\nand these are destructively concatenated together to give the value returned.".*;
pub export const doc107: [173:0]u8 = "(+ number*)\nAdds its arguments together.\nIf each argument is an integer, and the running total doesn't overflow, the result is an integer,\notherwise a floating-point number.".*;
pub export const doc108: [307:0]u8 = "(- number*)\nIf there is one argument, negates the argument.\nIf there are two or more arguments, subtracts the second and subsequent arguments from the first argument.\nIf each argument is an integer, and the running total doesn't overflow, returns the result as an integer,\notherwise a floating-point number.".*;
pub export const doc109: [184:0]u8 = "(* number*)\nMultiplies its arguments together.\nIf each argument is an integer, and the running total doesn't overflow, the result is an integer,\notherwise it's a floating-point number.".*;
pub export const doc110: [220:0]u8 = "(/ number*)\nDivides the first argument by the second and subsequent arguments.\nIf each argument is an integer, and each division produces an exact result, the result is an integer;\notherwise it's a floating-point number.".*;
pub export const doc111: [171:0]u8 = "(mod number number)\nReturns its first argument modulo the second argument.\nIf both arguments are integers the result is an integer; otherwise it's a floating-point number.".*;
pub export const doc112: [195:0]u8 = "(rem number number)\nReturns the remainder from dividing the first argument by the second argument.\nIf both arguments are integers the result is an integer; otherwise it's a floating-point number.".*;
pub export const doc113: [160:0]u8 = "(1+ number)\nAdds one to its argument and returns it.\nIf the argument is an integer the result is an integer if possible;\notherwise it's a floating-point number.".*;
pub export const doc114: [167:0]u8 = "(1- number)\nSubtracts one from its argument and returns it.\nIf the argument is an integer the result is an integer if possible;\notherwise it's a floating-point number.".*;
pub export const doc115: [186:0]u8 = "(abs number)\nReturns the absolute, positive value of its argument.\nIf the argument is an integer the result will be returned as an integer if possible,\notherwise a floating-point number.".*;
pub export const doc116: [172:0]u8 = "(random number)\nIf number is an integer returns a random number between 0 and one less than its argument.\nOtherwise returns a floating-point number between zero and number.".*;
pub export const doc117: [59:0]u8 = "(max number*)\nReturns the maximum of one or more arguments.".*;
pub export const doc118: [59:0]u8 = "(min number*)\nReturns the minimum of one or more arguments.".*;
pub export const doc119: [101:0]u8 = "(/= number*)\nReturns t if none of the arguments are equal, or nil if two or more arguments are equal.".*;
pub export const doc120: [108:0]u8 = "(= number*)\nReturns t if all the arguments, which must be numbers, are numerically equal, and nil otherwise.".*;
pub export const doc121: [89:0]u8 = "(< number*)\nReturns t if each argument is less than the next argument, and nil otherwise.".*;
pub export const doc122: [102:0]u8 = "(<= number*)\nReturns t if each argument is less than or equal to the next argument, and nil otherwise.".*;
pub export const doc123: [92:0]u8 = "(> number*)\nReturns t if each argument is greater than the next argument, and nil otherwise.".*;
pub export const doc124: [105:0]u8 = "(>= number*)\nReturns t if each argument is greater than or equal to the next argument, and nil otherwise.".*;
pub export const doc125: [80:0]u8 = "(plusp number)\nReturns t if the argument is greater than zero, or nil otherwise.".*;
pub export const doc126: [78:0]u8 = "(minusp number)\nReturns t if the argument is less than zero, or nil otherwise.".*;
pub export const doc127: [49:0]u8 = "(zerop number)\nReturns t if the argument is zero.".*;
pub export const doc128: [55:0]u8 = "(oddp number)\nReturns t if the integer argument is odd.".*;
pub export const doc129: [57:0]u8 = "(evenp number)\nReturns t if the integer argument is even.".*;
pub export const doc130: [58:0]u8 = "(integerp number)\nReturns t if the argument is an integer.".*;
pub export const doc131: [55:0]u8 = "(numberp number)\nReturns t if the argument is a number.".*;
pub export const doc132: [73:0]u8 = "(float number)\nReturns its argument converted to a floating-point number.".*;
pub export const doc133: [69:0]u8 = "(floatp number)\nReturns t if the argument is a floating-point number.".*;
pub export const doc134: [33:0]u8 = "(sin number)\nReturns sin(number).".*;
pub export const doc135: [33:0]u8 = "(cos number)\nReturns cos(number).".*;
pub export const doc136: [33:0]u8 = "(tan number)\nReturns tan(number).".*;
pub export const doc137: [35:0]u8 = "(asin number)\nReturns asin(number).".*;
pub export const doc138: [35:0]u8 = "(acos number)\nReturns acos(number).".*;
pub export const doc139: [120:0]u8 = "(atan number1 [number2])\nReturns the arc tangent of number1/number2, in radians. If number2 is omitted it defaults to 1.".*;
pub export const doc140: [35:0]u8 = "(sinh number)\nReturns sinh(number).".*;
pub export const doc141: [35:0]u8 = "(cosh number)\nReturns cosh(number).".*;
pub export const doc142: [35:0]u8 = "(tanh number)\nReturns tanh(number).".*;
pub export const doc143: [33:0]u8 = "(exp number)\nReturns exp(number).".*;
pub export const doc144: [35:0]u8 = "(sqrt number)\nReturns sqrt(number).".*;
pub export const doc145: [111:0]u8 = "(log number [base])\nReturns the logarithm of number to the specified base. If base is omitted it defaults to e.".*;
pub export const doc146: [200:0]u8 = "(expt number power)\nReturns number raised to the specified power.\nReturns the result as an integer if the arguments are integers and the result will be within range,\notherwise a floating-point number.".*;
pub export const doc147: [82:0]u8 = "(ceiling number [divisor])\nReturns ceil(number/divisor). If omitted, divisor is 1.".*;
pub export const doc148: [81:0]u8 = "(floor number [divisor])\nReturns floor(number/divisor). If omitted, divisor is 1.".*;
pub export const doc149: [111:0]u8 = "(truncate number [divisor])\nReturns the integer part of number/divisor. If divisor is omitted it defaults to 1.".*;
pub export const doc150: [111:0]u8 = "(round number [divisor])\nReturns the integer closest to number/divisor. If divisor is omitted it defaults to 1.".*;
pub export const doc151: [76:0]u8 = "(char-code character)\nReturns the ASCII code for a character, as an integer.".*;
pub export const doc152: [71:0]u8 = "(code-char integer)\nReturns the character for the specified ASCII code.".*;
pub export const doc153: [77:0]u8 = "(characterp item)\nReturns t if the argument is a character and nil otherwise.".*;
pub export const doc154: [71:0]u8 = "(stringp item)\nReturns t if the argument is a string and nil otherwise.".*;
pub export const doc155: [84:0]u8 = "(string= string string)\nReturns t if the two strings are the same, or nil otherwise.".*;
pub export const doc156: [148:0]u8 = "(string< string string)\nReturns the index to the first mismatch if the first string is alphabetically less than the second string,\nor nil otherwise.".*;
pub export const doc157: [151:0]u8 = "(string> string string)\nReturns the index to the first mismatch if the first string is alphabetically greater than the second string,\nor nil otherwise.".*;
pub export const doc158: [119:0]u8 = "(string/= string string)\nReturns the index to the first mismatch if the two strings are not the same, or nil otherwise.".*;
pub export const doc159: [161:0]u8 = "(string<= string string)\nReturns the index to the first mismatch if the first string is alphabetically less than or equal to\nthe second string, or nil otherwise.".*;
pub export const doc160: [164:0]u8 = "(string>= string string)\nReturns the index to the first mismatch if the first string is alphabetically greater than or equal to\nthe second string, or nil otherwise.".*;
pub export const doc161: [127:0]u8 = "(sort list test)\nDestructively sorts list according to the test function, using an insertion sort, and returns the sorted list.".*;
pub export const doc162: [131:0]u8 = "(concatenate 'string string*)\nJoins together the strings given in the second and subsequent arguments, and returns a single string.".*;
pub export const doc163: [97:0]u8 = "(subseq seq start [end])\nReturns a subsequence of a list or string from item start to item end-1.".*;
pub export const doc164: [227:0]u8 = "(search pattern target [:test function])\nReturns the index of the first occurrence of pattern in target, or nil if it's not found.\nThe target can be a list or string. If it's a list a test function can be specified; default eq.".*;
pub export const doc165: [89:0]u8 = "(read-from-string string)\nReads an atom or list from the specified string and returns it.".*;
pub export const doc166: [160:0]u8 = "(princ-to-string item)\nPrints its argument to a string, and returns the string.\nCharacters and strings are printed without quotation marks or escape characters.".*;
pub export const doc167: [223:0]u8 = "(prin1-to-string item [stream])\nPrints its argument to a string, and returns the string.\nCharacters and strings are printed with quotation marks and escape characters,\nin a format that will be suitable for read-from-string.".*;
pub export const doc168: [54:0]u8 = "(logand [value*])\nReturns the bitwise & of the values.".*;
pub export const doc169: [54:0]u8 = "(logior [value*])\nReturns the bitwise | of the values.".*;
pub export const doc170: [54:0]u8 = "(logxor [value*])\nReturns the bitwise ^ of the values.".*;
pub export const doc171: [60:0]u8 = "(lognot value)\nReturns the bitwise logical NOT of the value.".*;
pub export const doc172: [129:0]u8 = "(ash value shift)\nReturns the result of bitwise shifting value by shift bits. If shift is positive, value is shifted to the left.".*;
pub export const doc173: [90:0]u8 = "(logbitp bit value)\nReturns t if bit number bit in value is a '1', and nil if it is a '0'.".*;
pub export const doc174: [50:0]u8 = "(eval form*)\nEvaluates its argument an extra time.".*;
pub export const doc175: [106:0]u8 = "(return [value])\nExits from a (dotimes ...), (dolist ...), or (loop ...) loop construct and returns value.".*;
pub export const doc176: [45:0]u8 = "(globals)\nReturns a list of global variables.".*;
pub export const doc177: [73:0]u8 = "(locals)\nReturns an association list of local variables and their values.".*;
pub export const doc178: [90:0]u8 = "(makunbound symbol)\nRemoves the value of the symbol from GlobalEnv and returns the symbol.".*;
pub export const doc179: [96:0]u8 = "(break)\nInserts a breakpoint in the program. When evaluated prints Break! and reenters the REPL.".*;
pub export const doc180: [142:0]u8 = "(read [stream])\nReads an atom or list from the serial input and returns it.\nIf stream is specified the item is read from the specified stream.".*;
pub export const doc181: [129:0]u8 = "(prin1 item [stream])\nPrints its argument, and returns its value.\nStrings are printed with quotation marks and escape characters.".*;
pub export const doc182: [197:0]u8 = "(print item [stream])\nPrints its argument with quotation marks and escape characters, on a new line, and followed by a space.\nIf stream is specified the argument is printed to the specified stream.".*;
pub export const doc183: [146:0]u8 = "(princ item [stream])\nPrints its argument, and returns its value.\nCharacters and strings are printed without quotation marks or escape characters.".*;
pub export const doc184: [125:0]u8 = "(terpri [stream])\nPrints a new line, and returns nil.\nIf stream is specified the new line is written to the specified stream.".*;
pub export const doc185: [61:0]u8 = "(read-byte stream)\nReads a byte from a stream and returns it.".*;
pub export const doc186: [206:0]u8 = "(read-line [stream])\nReads characters from the serial input up to a newline character, and returns them as a string, excluding the newline.\nIf stream is specified the line is read from the specified stream.".*;
pub export const doc187: [55:0]u8 = "(write-byte number [stream])\nWrites a byte to a stream.".*;
pub export const doc188: [107:0]u8 = "(write-string string [stream])\nWrites a string. If stream is specified the string is written to the stream.".*;
pub export const doc189: [139:0]u8 = "(write-line string [stream])\nWrites a string terminated by a newline character. If stream is specified the string is written to the stream.".*;
pub export const doc190: [192:0]u8 = "(restart-i2c stream [read-p])\nRestarts an i2c-stream.\nIf read-p is nil or omitted the stream is written to.\nIf read-p is an integer it specifies the number of bytes to be read from the stream.".*;
pub export const doc191: [109:0]u8 = "(gc [print time])\nForces a garbage collection and prints the number of objects collected, and the time taken.".*;
pub export const doc192: [55:0]u8 = "(room)\nReturns the number of free Lisp cells remaining.".*;
pub export const doc193: [141:0]u8 = "(backtrace [on])\nSets the state of backtrace according to the boolean flag 'on',\nor with no argument displays the current state of backtrace.".*;
pub export const doc194: [123:0]u8 = "(save-image [symbol])\nSaves the current uLisp image to non-volatile memory or SD card so it can be loaded using load-image.".*;
pub export const doc195: [86:0]u8 = "(load-image [filename])\nLoads a saved uLisp image from non-volatile memory or SD card.".*;
pub export const doc196: [38:0]u8 = "(cls)\nPrints a clear-screen character.".*;
pub export const doc197: [104:0]u8 = "(digitalread pin)\nReads the state of the specified Arduino pin number and returns t (high) or nil (low).".*;
pub export const doc198: [158:0]u8 = "(analogreadresolution bits)\nSpecifies the resolution for the analogue inputs on platforms that support it.\nThe default resolution on all platforms is 10 bits.".*;
pub export const doc199: [77:0]u8 = "(analogwrite pin value)\nWrites the value to the specified Arduino pin number.".*;
pub export const doc200: [61:0]u8 = "(delay number)\nDelays for a specified number of milliseconds.".*;
pub export const doc201: [70:0]u8 = "(millis)\nReturns the time in milliseconds that uLisp has been running.".*;
pub export const doc202: [148:0]u8 = "(sleep secs)\nPuts the processor into a low-power sleep mode for secs.\nOnly supported on some platforms. On other platforms it does delay(1000*secs).".*;
pub export const doc203: [167:0]u8 = "(note [pin] [note] [octave])\nGenerates a square wave on pin.\nnote represents the note in the well-tempered scale.\nThe argument octave can specify an octave; default 0.".*;
pub export const doc204: [87:0]u8 = "(edit 'function)\nCalls the Lisp tree editor to allow you to edit a function definition.".*;
pub export const doc205: [187:0]u8 = "(pprint item [str])\nPrints its argument, using the pretty printer, to display it formatted in a structured way.\nIf str is specified it prints to the specified stream. It returns no value.".*;
pub export const doc206: [185:0]u8 = "(pprintall [str])\nPretty-prints the definition of every function and variable defined in the uLisp workspace.\nIf str is specified it prints to the specified stream. It returns no value.".*;
pub export const doc207: [239:0]u8 = "(require 'symbol)\nLoads the definition of a function defined with defun, or a variable defined with defvar, from the Lisp Library.\nIt returns t if it was loaded, or nil if the symbol is already defined or isn't defined in the Lisp Library.".*;
pub export const doc208: [74:0]u8 = "(list-library)\nPrints a list of the functions defined in the List Library.".*;
pub export const doc209: [80:0]u8 = "(? item)\nPrints the documentation string of a built-in or user-defined function.".*;
pub export const doc210: [133:0]u8 = "(documentation 'symbol [type])\nReturns the documentation string of a built-in or user-defined function. The type argument is ignored.".*;
pub export const doc211: [113:0]u8 = "(apropos item)\nPrints the user-defined and built-in functions whose names contain the specified string or symbol.".*;
pub export const doc212: [125:0]u8 = "(apropos-list item)\nReturns a list of user-defined and built-in functions whose names contain the specified string or symbol.".*;
pub export const doc213: [165:0]u8 = "(unwind-protect form1 [forms]*)\nEvaluates form1 and forms in order and returns the value of form1,\nbut guarantees to evaluate forms even if an error occurs in form1.".*;
pub export const doc214: [57:0]u8 = "(ignore-errors [forms]*)\nEvaluates forms ignoring errors.".*;
pub export const doc215: [124:0]u8 = "(error controlstring [arguments]*)\nSignals an error. The message is printed by format using the controlstring and arguments.".*;
pub export const doc216: [72:0]u8 = "(directory)\nReturns a list of the filenames of the files on the SD card.".*;
pub export const doc217: [93:0]u8 = "(with-client (str [address port]) form*)\nEvaluates the forms with str bound to a wifi-stream.".*;
pub export const doc218: [125:0]u8 = "(available stream)\nReturns the number of bytes available for reading from the wifi-stream, or zero if no bytes are available.".*;
pub export const doc219: [60:0]u8 = "(wifi-server)\nStarts a Wi-Fi server running. It returns nil.".*;
pub export const doc220: [160:0]u8 = "(wifi-softap ssid [password channel hidden])\nSet up a soft access point to establish a Wi-Fi network.\nReturns the IP address as a string or nil if unsuccessful.".*;
pub export const doc221: [85:0]u8 = "(connected stream)\nReturns t or nil to indicate if the client on stream is connected.".*;
pub export const doc222: [71:0]u8 = "(wifi-localip)\nReturns the IP address of the local network as a string.".*;
pub export const doc223: [121:0]u8 = "(wifi-connect [ssid pass])\nConnects to the Wi-Fi network ssid using password pass. It returns the IP address as a string.".*;
pub export const doc224: [161:0]u8 = "(with-gfx (str) form*)\nEvaluates the forms with str bound to an gfx-stream so you can print text\nto the graphics display using the standard uLisp print commands.".*;
pub export const doc225: [92:0]u8 = "(draw-pixel x y [colour])\nDraws a pixel at coordinates (x,y) in colour, or white if omitted.".*;
pub export const doc226: [101:0]u8 = "(draw-line x0 y0 x1 y1 [colour])\nDraws a line from (x0,y0) to (x1,y1) in colour, or white if omitted.".*;
pub export const doc227: [176:0]u8 = "(draw-rect x y w h [colour])\nDraws an outline rectangle with its top left corner at (x,y), with width w,\nand with height h. The outline is drawn in colour, or white if omitted.".*;
pub export const doc228: [174:0]u8 = "(fill-rect x y w h [colour])\nDraws a filled rectangle with its top left corner at (x,y), with width w,\nand with height h. The outline is drawn in colour, or white if omitted.".*;
pub export const doc229: [149:0]u8 = "(draw-circle x y r [colour])\nDraws an outline circle with its centre at (x, y) and with radius r.\nThe circle is drawn in colour, or white if omitted.".*;
pub export const doc230: [147:0]u8 = "(fill-circle x y r [colour])\nDraws a filled circle with its centre at (x, y) and with radius r.\nThe circle is drawn in colour, or white if omitted.".*;
pub export const doc231: [214:0]u8 = "(draw-round-rect x y w h radius [colour])\nDraws an outline rounded rectangle with its top left corner at (x,y), with width w,\nheight h, and corner radius radius. The outline is drawn in colour, or white if omitted.".*;
pub export const doc232: [212:0]u8 = "(fill-round-rect x y w h radius [colour])\nDraws a filled rounded rectangle with its top left corner at (x,y), with width w,\nheight h, and corner radius radius. The outline is drawn in colour, or white if omitted.".*;
pub export const doc233: [160:0]u8 = "(draw-triangle x0 y0 x1 y1 x2 y2 [colour])\nDraws an outline triangle between (x1,y1), (x2,y2), and (x3,y3).\nThe outline is drawn in colour, or white if omitted.".*;
pub export const doc234: [158:0]u8 = "(fill-triangle x0 y0 x1 y1 x2 y2 [colour])\nDraws a filled triangle between (x1,y1), (x2,y2), and (x3,y3).\nThe outline is drawn in colour, or white if omitted.".*;
pub export const doc235: [275:0]u8 = "(draw-char x y char [colour background size])\nDraws the character char with its top left corner at (x,y).\nThe character is drawn in a 5 x 7 pixel font in colour against background,\nwhich default to white and black respectively.\nThe character can optionally be scaled by size.".*;
pub export const doc236: [66:0]u8 = "(set-cursor x y)\nSets the start point for text plotting to (x, y).".*;
pub export const doc237: [96:0]u8 = "(set-text-color colour [background])\nSets the text colour for text plotted using (with-gfx ...).".*;
pub export const doc238: [67:0]u8 = "(set-text-size scale)\nScales text by the specified size, default 1.".*;
pub export const doc239: [109:0]u8 = "(set-text-wrap boolean)\nSpecified whether text wraps at the right-hand edge of the display; the default is t.".*;
pub export const doc240: [77:0]u8 = "(fill-screen [colour])\nFills or clears the screen with colour, default black.".*;
pub export const doc241: [110:0]u8 = "(set-rotation option)\nSets the display orientation for subsequent graphics commands; values are 0, 1, 2, or 3.".*;
pub export const doc242: [51:0]u8 = "(invert-display boolean)\nMirror-images the display.".*;
pub export const doc243: [79:0]u8 = "(display)\nNeeded on OLED displays to update the display from the memory buffer.".*;
pub export const lookup_table: [251]tbl_entry_t = [251]tbl_entry_t{
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string0[@as(usize, @intCast(0))]))),
        .fptr = null,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc0[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string1[@as(usize, @intCast(0))]))),
        .fptr = null,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc1[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string2[@as(usize, @intCast(0))]))),
        .fptr = null,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc2[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string3[@as(usize, @intCast(0))]))),
        .fptr = null,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc3[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string4[@as(usize, @intCast(0))]))),
        .fptr = null,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc4[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string5[@as(usize, @intCast(0))]))),
        .fptr = null,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .doc = null,
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string6[@as(usize, @intCast(0))]))),
        .fptr = null,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .doc = null,
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string7[@as(usize, @intCast(0))]))),
        .fptr = null,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .doc = null,
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string8[@as(usize, @intCast(0))]))),
        .fptr = null,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .doc = null,
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string9[@as(usize, @intCast(0))]))),
        .fptr = null,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .doc = null,
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string10[@as(usize, @intCast(0))]))),
        .fptr = null,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .doc = null,
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string11[@as(usize, @intCast(0))]))),
        .fptr = null,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .doc = null,
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string12[@as(usize, @intCast(0))]))),
        .fptr = null,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc12[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string13[@as(usize, @intCast(0))]))),
        .fptr = null,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 15))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc13[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string14[@as(usize, @intCast(0))]))),
        .fptr = null,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 15))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc14[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string15[@as(usize, @intCast(0))]))),
        .fptr = null,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 15))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc15[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string16[@as(usize, @intCast(0))]))),
        .fptr = null,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 15))))),
        .doc = null,
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string17[@as(usize, @intCast(0))]))),
        .fptr = null,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 7))))),
        .doc = null,
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string18[@as(usize, @intCast(0))]))),
        .fptr = &sp_quote,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 201))))),
        .doc = null,
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string19[@as(usize, @intCast(0))]))),
        .fptr = &sp_defun,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 215))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc19[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string20[@as(usize, @intCast(0))]))),
        .fptr = &sp_defvar,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 203))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc20[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string21[@as(usize, @intCast(0))]))),
        .fptr = &fn_eq,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 146))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc21[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string22[@as(usize, @intCast(0))]))),
        .fptr = &fn_car,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc22[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string23[@as(usize, @intCast(0))]))),
        .fptr = &fn_car,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc23[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string24[@as(usize, @intCast(0))]))),
        .fptr = &fn_cdr,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc24[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string25[@as(usize, @intCast(0))]))),
        .fptr = &fn_cdr,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc25[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string26[@as(usize, @intCast(0))]))),
        .fptr = &fn_nth,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 146))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc26[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string27[@as(usize, @intCast(0))]))),
        .fptr = &fn_aref,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 151))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc27[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string28[@as(usize, @intCast(0))]))),
        .fptr = &fn_char,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 146))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc28[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string29[@as(usize, @intCast(0))]))),
        .fptr = &fn_stringfn,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc29[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string30[@as(usize, @intCast(0))]))),
        .fptr = &fn_pinmode,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 146))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc30[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string31[@as(usize, @intCast(0))]))),
        .fptr = &fn_digitalwrite,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 146))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc31[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string32[@as(usize, @intCast(0))]))),
        .fptr = &fn_analogread,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc32[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string33[@as(usize, @intCast(0))]))),
        .fptr = &fn_register,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 138))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc33[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string34[@as(usize, @intCast(0))]))),
        .fptr = &fn_format,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 151))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc34[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string35[@as(usize, @intCast(0))]))),
        .fptr = &sp_or,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 199))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc35[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string36[@as(usize, @intCast(0))]))),
        .fptr = &sp_setq,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 215))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc36[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string37[@as(usize, @intCast(0))]))),
        .fptr = &sp_loop,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 199))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc37[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string38[@as(usize, @intCast(0))]))),
        .fptr = &sp_push,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 210))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc38[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string39[@as(usize, @intCast(0))]))),
        .fptr = &sp_pop,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 201))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc39[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string40[@as(usize, @intCast(0))]))),
        .fptr = &sp_incf,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 202))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc40[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string41[@as(usize, @intCast(0))]))),
        .fptr = &sp_decf,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 202))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc41[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string42[@as(usize, @intCast(0))]))),
        .fptr = &sp_setf,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 215))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc42[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string43[@as(usize, @intCast(0))]))),
        .fptr = &sp_dolist,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 207))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc43[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string44[@as(usize, @intCast(0))]))),
        .fptr = &sp_dotimes,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 207))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc44[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string45[@as(usize, @intCast(0))]))),
        .fptr = &sp_do,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 215))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc45[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string46[@as(usize, @intCast(0))]))),
        .fptr = &sp_dostar,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 207))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc46[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string47[@as(usize, @intCast(0))]))),
        .fptr = &sp_trace,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 193))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc47[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string48[@as(usize, @intCast(0))]))),
        .fptr = &sp_untrace,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 193))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc48[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string49[@as(usize, @intCast(0))]))),
        .fptr = &sp_formillis,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 207))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc49[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string50[@as(usize, @intCast(0))]))),
        .fptr = &sp_time,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 201))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc50[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string51[@as(usize, @intCast(0))]))),
        .fptr = &sp_withoutputtostring,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 207))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc51[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string52[@as(usize, @intCast(0))]))),
        .fptr = &sp_withserial,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 207))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc52[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string53[@as(usize, @intCast(0))]))),
        .fptr = &sp_withi2c,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 207))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc53[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string54[@as(usize, @intCast(0))]))),
        .fptr = &sp_withspi,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 207))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc54[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string55[@as(usize, @intCast(0))]))),
        .fptr = &sp_withsdcard,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 215))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc55[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string56[@as(usize, @intCast(0))]))),
        .fptr = &tf_progn,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 71))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc56[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string57[@as(usize, @intCast(0))]))),
        .fptr = &tf_if,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 83))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc57[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string58[@as(usize, @intCast(0))]))),
        .fptr = &tf_cond,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 71))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc58[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string59[@as(usize, @intCast(0))]))),
        .fptr = &tf_when,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 79))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc59[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string60[@as(usize, @intCast(0))]))),
        .fptr = &tf_unless,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 79))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc60[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string61[@as(usize, @intCast(0))]))),
        .fptr = &tf_case,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 79))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc61[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string62[@as(usize, @intCast(0))]))),
        .fptr = &tf_and,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 71))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc62[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string63[@as(usize, @intCast(0))]))),
        .fptr = &fn_not,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc63[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string64[@as(usize, @intCast(0))]))),
        .fptr = &fn_not,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc64[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string65[@as(usize, @intCast(0))]))),
        .fptr = &fn_cons,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 146))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc65[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string66[@as(usize, @intCast(0))]))),
        .fptr = &fn_atom,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc66[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string67[@as(usize, @intCast(0))]))),
        .fptr = &fn_listp,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc67[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string68[@as(usize, @intCast(0))]))),
        .fptr = &fn_consp,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc68[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string69[@as(usize, @intCast(0))]))),
        .fptr = &fn_symbolp,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc69[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string70[@as(usize, @intCast(0))]))),
        .fptr = &fn_arrayp,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc70[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string71[@as(usize, @intCast(0))]))),
        .fptr = &fn_boundp,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc71[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string72[@as(usize, @intCast(0))]))),
        .fptr = &fn_keywordp,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc72[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string73[@as(usize, @intCast(0))]))),
        .fptr = &fn_setfn,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 151))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc73[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string74[@as(usize, @intCast(0))]))),
        .fptr = &fn_streamp,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc74[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string75[@as(usize, @intCast(0))]))),
        .fptr = &fn_equal,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 146))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc75[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string76[@as(usize, @intCast(0))]))),
        .fptr = &fn_caar,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc76[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string77[@as(usize, @intCast(0))]))),
        .fptr = &fn_cadr,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc77[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string78[@as(usize, @intCast(0))]))),
        .fptr = &fn_cadr,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc78[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string79[@as(usize, @intCast(0))]))),
        .fptr = &fn_cdar,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc79[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string80[@as(usize, @intCast(0))]))),
        .fptr = &fn_cddr,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc80[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string81[@as(usize, @intCast(0))]))),
        .fptr = &fn_caaar,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc81[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string82[@as(usize, @intCast(0))]))),
        .fptr = &fn_caadr,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc82[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string83[@as(usize, @intCast(0))]))),
        .fptr = &fn_cadar,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc83[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string84[@as(usize, @intCast(0))]))),
        .fptr = &fn_caddr,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc84[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string85[@as(usize, @intCast(0))]))),
        .fptr = &fn_caddr,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc85[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string86[@as(usize, @intCast(0))]))),
        .fptr = &fn_cdaar,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc86[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string87[@as(usize, @intCast(0))]))),
        .fptr = &fn_cdadr,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc87[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string88[@as(usize, @intCast(0))]))),
        .fptr = &fn_cddar,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc88[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string89[@as(usize, @intCast(0))]))),
        .fptr = &fn_cdddr,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc89[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string90[@as(usize, @intCast(0))]))),
        .fptr = &fn_length,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc90[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string91[@as(usize, @intCast(0))]))),
        .fptr = &fn_arraydimensions,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc91[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string92[@as(usize, @intCast(0))]))),
        .fptr = &fn_list,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 135))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc92[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string93[@as(usize, @intCast(0))]))),
        .fptr = &fn_copylist,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc93[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string94[@as(usize, @intCast(0))]))),
        .fptr = &fn_makearray,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 141))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc94[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string95[@as(usize, @intCast(0))]))),
        .fptr = &fn_reverse,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc95[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string96[@as(usize, @intCast(0))]))),
        .fptr = &fn_assoc,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 148))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc96[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string97[@as(usize, @intCast(0))]))),
        .fptr = &fn_member,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 148))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc97[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string98[@as(usize, @intCast(0))]))),
        .fptr = &fn_apply,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 151))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc98[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string99[@as(usize, @intCast(0))]))),
        .fptr = &fn_funcall,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 143))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc99[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string100[@as(usize, @intCast(0))]))),
        .fptr = &fn_append,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 135))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc100[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string101[@as(usize, @intCast(0))]))),
        .fptr = &fn_mapc,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 151))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc101[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string102[@as(usize, @intCast(0))]))),
        .fptr = &fn_mapl,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 151))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc102[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string103[@as(usize, @intCast(0))]))),
        .fptr = &fn_mapcar,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 151))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc103[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string104[@as(usize, @intCast(0))]))),
        .fptr = &fn_mapcan,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 151))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc104[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string105[@as(usize, @intCast(0))]))),
        .fptr = &fn_maplist,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 151))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc105[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string106[@as(usize, @intCast(0))]))),
        .fptr = &fn_mapcon,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 151))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc106[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string107[@as(usize, @intCast(0))]))),
        .fptr = &fn_add,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 135))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc107[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string108[@as(usize, @intCast(0))]))),
        .fptr = &fn_subtract,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 143))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc108[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string109[@as(usize, @intCast(0))]))),
        .fptr = &fn_multiply,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 135))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc109[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string110[@as(usize, @intCast(0))]))),
        .fptr = &fn_divide,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 143))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc110[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string111[@as(usize, @intCast(0))]))),
        .fptr = &fn_mod,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 146))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc111[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string112[@as(usize, @intCast(0))]))),
        .fptr = &fn_rem,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 146))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc112[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string113[@as(usize, @intCast(0))]))),
        .fptr = &fn_oneplus,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc113[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string114[@as(usize, @intCast(0))]))),
        .fptr = &fn_oneminus,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc114[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string115[@as(usize, @intCast(0))]))),
        .fptr = &fn_abs,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc115[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string116[@as(usize, @intCast(0))]))),
        .fptr = &fn_random,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc116[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string117[@as(usize, @intCast(0))]))),
        .fptr = &fn_maxfn,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 143))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc117[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string118[@as(usize, @intCast(0))]))),
        .fptr = &fn_minfn,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 143))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc118[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string119[@as(usize, @intCast(0))]))),
        .fptr = &fn_noteq,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 143))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc119[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string120[@as(usize, @intCast(0))]))),
        .fptr = &fn_numeq,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 143))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc120[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string121[@as(usize, @intCast(0))]))),
        .fptr = &fn_less,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 143))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc121[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string122[@as(usize, @intCast(0))]))),
        .fptr = &fn_lesseq,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 143))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc122[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string123[@as(usize, @intCast(0))]))),
        .fptr = &fn_greater,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 143))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc123[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string124[@as(usize, @intCast(0))]))),
        .fptr = &fn_greatereq,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 143))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc124[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string125[@as(usize, @intCast(0))]))),
        .fptr = &fn_plusp,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc125[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string126[@as(usize, @intCast(0))]))),
        .fptr = &fn_minusp,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc126[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string127[@as(usize, @intCast(0))]))),
        .fptr = &fn_zerop,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc127[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string128[@as(usize, @intCast(0))]))),
        .fptr = &fn_oddp,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc128[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string129[@as(usize, @intCast(0))]))),
        .fptr = &fn_evenp,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc129[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string130[@as(usize, @intCast(0))]))),
        .fptr = &fn_integerp,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc130[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string131[@as(usize, @intCast(0))]))),
        .fptr = &fn_numberp,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc131[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string132[@as(usize, @intCast(0))]))),
        .fptr = &fn_floatfn,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc132[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string133[@as(usize, @intCast(0))]))),
        .fptr = &fn_floatp,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc133[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string134[@as(usize, @intCast(0))]))),
        .fptr = &fn_sin,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc134[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string135[@as(usize, @intCast(0))]))),
        .fptr = &fn_cos,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc135[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string136[@as(usize, @intCast(0))]))),
        .fptr = &fn_tan,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc136[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string137[@as(usize, @intCast(0))]))),
        .fptr = &fn_asin,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc137[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string138[@as(usize, @intCast(0))]))),
        .fptr = &fn_acos,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc138[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string139[@as(usize, @intCast(0))]))),
        .fptr = &fn_atan,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 138))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc139[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string140[@as(usize, @intCast(0))]))),
        .fptr = &fn_sinh,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc140[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string141[@as(usize, @intCast(0))]))),
        .fptr = &fn_cosh,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc141[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string142[@as(usize, @intCast(0))]))),
        .fptr = &fn_tanh,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc142[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string143[@as(usize, @intCast(0))]))),
        .fptr = &fn_exp,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc143[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string144[@as(usize, @intCast(0))]))),
        .fptr = &fn_sqrt,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc144[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string145[@as(usize, @intCast(0))]))),
        .fptr = &fn_log,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 138))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc145[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string146[@as(usize, @intCast(0))]))),
        .fptr = &fn_expt,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 146))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc146[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string147[@as(usize, @intCast(0))]))),
        .fptr = &fn_ceiling,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 138))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc147[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string148[@as(usize, @intCast(0))]))),
        .fptr = &fn_floor,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 138))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc148[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string149[@as(usize, @intCast(0))]))),
        .fptr = &fn_truncate,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 138))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc149[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string150[@as(usize, @intCast(0))]))),
        .fptr = &fn_round,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 138))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc150[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string151[@as(usize, @intCast(0))]))),
        .fptr = &fn_charcode,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc151[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string152[@as(usize, @intCast(0))]))),
        .fptr = &fn_codechar,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc152[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string153[@as(usize, @intCast(0))]))),
        .fptr = &fn_characterp,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc153[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string154[@as(usize, @intCast(0))]))),
        .fptr = &fn_stringp,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc154[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string155[@as(usize, @intCast(0))]))),
        .fptr = &fn_stringeq,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 146))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc155[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string156[@as(usize, @intCast(0))]))),
        .fptr = &fn_stringless,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 146))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc156[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string157[@as(usize, @intCast(0))]))),
        .fptr = &fn_stringgreater,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 146))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc157[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string158[@as(usize, @intCast(0))]))),
        .fptr = &fn_stringnoteq,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 146))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc158[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string159[@as(usize, @intCast(0))]))),
        .fptr = &fn_stringlesseq,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 146))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc159[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string160[@as(usize, @intCast(0))]))),
        .fptr = &fn_stringgreatereq,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 146))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc160[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string161[@as(usize, @intCast(0))]))),
        .fptr = &fn_sort,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 146))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc161[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string162[@as(usize, @intCast(0))]))),
        .fptr = &fn_concatenate,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 143))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc162[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string163[@as(usize, @intCast(0))]))),
        .fptr = &fn_subseq,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 147))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc163[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string164[@as(usize, @intCast(0))]))),
        .fptr = &fn_search,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 148))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc164[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string165[@as(usize, @intCast(0))]))),
        .fptr = &fn_readfromstring,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc165[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string166[@as(usize, @intCast(0))]))),
        .fptr = &fn_princtostring,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc166[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string167[@as(usize, @intCast(0))]))),
        .fptr = &fn_prin1tostring,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc167[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string168[@as(usize, @intCast(0))]))),
        .fptr = &fn_logand,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 135))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc168[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string169[@as(usize, @intCast(0))]))),
        .fptr = &fn_logior,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 135))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc169[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string170[@as(usize, @intCast(0))]))),
        .fptr = &fn_logxor,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 135))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc170[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string171[@as(usize, @intCast(0))]))),
        .fptr = &fn_lognot,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc171[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string172[@as(usize, @intCast(0))]))),
        .fptr = &fn_ash,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 146))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc172[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string173[@as(usize, @intCast(0))]))),
        .fptr = &fn_logbitp,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 146))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc173[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string174[@as(usize, @intCast(0))]))),
        .fptr = &fn_eval,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc174[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string175[@as(usize, @intCast(0))]))),
        .fptr = &fn_return,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 129))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc175[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string176[@as(usize, @intCast(0))]))),
        .fptr = &fn_globals,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 128))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc176[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string177[@as(usize, @intCast(0))]))),
        .fptr = &fn_locals,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 128))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc177[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string178[@as(usize, @intCast(0))]))),
        .fptr = &fn_makunbound,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc178[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string179[@as(usize, @intCast(0))]))),
        .fptr = &fn_break,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 128))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc179[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string180[@as(usize, @intCast(0))]))),
        .fptr = &fn_read,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 129))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc180[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string181[@as(usize, @intCast(0))]))),
        .fptr = &fn_prin1,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 138))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc181[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string182[@as(usize, @intCast(0))]))),
        .fptr = &fn_print,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 138))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc182[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string183[@as(usize, @intCast(0))]))),
        .fptr = &fn_princ,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 138))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc183[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string184[@as(usize, @intCast(0))]))),
        .fptr = &fn_terpri,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 129))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc184[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string185[@as(usize, @intCast(0))]))),
        .fptr = &fn_readbyte,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 130))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc185[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string186[@as(usize, @intCast(0))]))),
        .fptr = &fn_readline,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 129))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc186[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string187[@as(usize, @intCast(0))]))),
        .fptr = &fn_writebyte,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 138))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc187[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string188[@as(usize, @intCast(0))]))),
        .fptr = &fn_writestring,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 138))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc188[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string189[@as(usize, @intCast(0))]))),
        .fptr = &fn_writeline,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 138))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc189[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string190[@as(usize, @intCast(0))]))),
        .fptr = &fn_restarti2c,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 138))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc190[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string191[@as(usize, @intCast(0))]))),
        .fptr = &fn_gc,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 129))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc191[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string192[@as(usize, @intCast(0))]))),
        .fptr = &fn_room,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 128))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc192[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string193[@as(usize, @intCast(0))]))),
        .fptr = &fn_backtrace,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 129))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc193[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string194[@as(usize, @intCast(0))]))),
        .fptr = &fn_saveimage,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 129))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc194[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string195[@as(usize, @intCast(0))]))),
        .fptr = &fn_loadimage,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 129))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc195[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string196[@as(usize, @intCast(0))]))),
        .fptr = &fn_cls,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 128))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc196[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string197[@as(usize, @intCast(0))]))),
        .fptr = &fn_digitalread,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc197[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string198[@as(usize, @intCast(0))]))),
        .fptr = &fn_analogreadresolution,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc198[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string199[@as(usize, @intCast(0))]))),
        .fptr = &fn_analogwrite,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 146))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc199[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string200[@as(usize, @intCast(0))]))),
        .fptr = &fn_delay,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc200[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string201[@as(usize, @intCast(0))]))),
        .fptr = &fn_millis,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 128))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc201[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string202[@as(usize, @intCast(0))]))),
        .fptr = &fn_sleep,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 129))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc202[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string203[@as(usize, @intCast(0))]))),
        .fptr = &fn_note,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 131))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc203[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string204[@as(usize, @intCast(0))]))),
        .fptr = &fn_edit,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc204[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string205[@as(usize, @intCast(0))]))),
        .fptr = &fn_pprint,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 138))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc205[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string206[@as(usize, @intCast(0))]))),
        .fptr = &fn_pprintall,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 129))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc206[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string207[@as(usize, @intCast(0))]))),
        .fptr = &fn_require,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc207[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string208[@as(usize, @intCast(0))]))),
        .fptr = &fn_listlibrary,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 128))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc208[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string209[@as(usize, @intCast(0))]))),
        .fptr = &sp_help,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 201))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc209[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string210[@as(usize, @intCast(0))]))),
        .fptr = &fn_documentation,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 138))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc210[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string211[@as(usize, @intCast(0))]))),
        .fptr = &fn_apropos,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc211[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string212[@as(usize, @intCast(0))]))),
        .fptr = &fn_aproposlist,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc212[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string213[@as(usize, @intCast(0))]))),
        .fptr = &sp_unwindprotect,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 199))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc213[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string214[@as(usize, @intCast(0))]))),
        .fptr = &sp_ignoreerrors,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 199))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc214[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string215[@as(usize, @intCast(0))]))),
        .fptr = &sp_error,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 207))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc215[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string216[@as(usize, @intCast(0))]))),
        .fptr = &fn_directory,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 128))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc216[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string217[@as(usize, @intCast(0))]))),
        .fptr = &sp_withclient,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 207))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc217[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string218[@as(usize, @intCast(0))]))),
        .fptr = &fn_available,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc218[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string219[@as(usize, @intCast(0))]))),
        .fptr = &fn_wifiserver,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 128))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc219[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string220[@as(usize, @intCast(0))]))),
        .fptr = &fn_wifisoftap,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 132))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc220[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string221[@as(usize, @intCast(0))]))),
        .fptr = &fn_connected,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc221[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string222[@as(usize, @intCast(0))]))),
        .fptr = &fn_wifilocalip,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 128))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc222[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string223[@as(usize, @intCast(0))]))),
        .fptr = &fn_wificonnect,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 131))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc223[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string224[@as(usize, @intCast(0))]))),
        .fptr = &sp_withgfx,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 207))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc224[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string225[@as(usize, @intCast(0))]))),
        .fptr = &fn_drawpixel,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 147))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc225[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string226[@as(usize, @intCast(0))]))),
        .fptr = &fn_drawline,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 165))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc226[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string227[@as(usize, @intCast(0))]))),
        .fptr = &fn_drawrect,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 165))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc227[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string228[@as(usize, @intCast(0))]))),
        .fptr = &fn_fillrect,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 165))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc228[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string229[@as(usize, @intCast(0))]))),
        .fptr = &fn_drawcircle,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 156))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc229[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string230[@as(usize, @intCast(0))]))),
        .fptr = &fn_fillcircle,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 156))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc230[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string231[@as(usize, @intCast(0))]))),
        .fptr = &fn_drawroundrect,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 174))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc231[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string232[@as(usize, @intCast(0))]))),
        .fptr = &fn_fillroundrect,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 174))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc232[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string233[@as(usize, @intCast(0))]))),
        .fptr = &fn_drawtriangle,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 183))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc233[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string234[@as(usize, @intCast(0))]))),
        .fptr = &fn_filltriangle,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 183))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc234[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string235[@as(usize, @intCast(0))]))),
        .fptr = &fn_drawchar,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 158))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc235[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string236[@as(usize, @intCast(0))]))),
        .fptr = &fn_setcursor,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 146))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc236[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string237[@as(usize, @intCast(0))]))),
        .fptr = &fn_settextcolor,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 138))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc237[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string238[@as(usize, @intCast(0))]))),
        .fptr = &fn_settextsize,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc238[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string239[@as(usize, @intCast(0))]))),
        .fptr = &fn_settextwrap,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc239[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string240[@as(usize, @intCast(0))]))),
        .fptr = &fn_fillscreen,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 129))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc240[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string241[@as(usize, @intCast(0))]))),
        .fptr = &fn_setrotation,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc241[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string242[@as(usize, @intCast(0))]))),
        .fptr = &fn_invertdisplay,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 137))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc242[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string243[@as(usize, @intCast(0))]))),
        .fptr = &fn_display,
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 128))))),
        .doc = @as([*c]const u8, @ptrCast(@alignCast(&doc243[@as(usize, @intCast(0))]))),
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string244[@as(usize, @intCast(0))]))),
        .fptr = @as(fn_ptr_type, @ptrFromInt(@as(c_int, 13))),
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 0))))),
        .doc = null,
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string245[@as(usize, @intCast(0))]))),
        .fptr = @as(fn_ptr_type, @ptrFromInt(@as(c_int, 1))),
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(DIGITALWRITE)))),
        .doc = null,
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string246[@as(usize, @intCast(0))]))),
        .fptr = @as(fn_ptr_type, @ptrFromInt(@as(c_int, 0))),
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(DIGITALWRITE)))),
        .doc = null,
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string247[@as(usize, @intCast(0))]))),
        .fptr = @as(fn_ptr_type, @ptrFromInt(@as(c_int, 2))),
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(PINMODE)))),
        .doc = null,
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string248[@as(usize, @intCast(0))]))),
        .fptr = @as(fn_ptr_type, @ptrFromInt(@as(c_int, 3))),
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(PINMODE)))),
        .doc = null,
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string249[@as(usize, @intCast(0))]))),
        .fptr = @as(fn_ptr_type, @ptrFromInt(@as(c_int, 4))),
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(PINMODE)))),
        .doc = null,
    },
    tbl_entry_t{
        .string = @as([*c]const u8, @ptrCast(@alignCast(&string250[@as(usize, @intCast(0))]))),
        .fptr = @as(fn_ptr_type, @ptrFromInt(@as(c_int, 5))),
        .minmax = @as(u8, @bitCast(@as(i8, @truncate(PINMODE)))),
        .doc = null,
    },
};
pub export var tables: [2][*c]const tbl_entry_t = [2][*c]const tbl_entry_t{
    @as([*c]const tbl_entry_t, @ptrCast(@alignCast(&lookup_table[@as(usize, @intCast(0))]))),
    null,
};
pub export const tablesizes: [2]c_uint = [2]c_uint{
    @as(c_uint, @bitCast(@as(c_uint, @truncate(@sizeOf([251]tbl_entry_t) / @sizeOf(tbl_entry_t))))),
    0,
};
pub export fn table(arg_n: c_int) [*c]const tbl_entry_t {
    var n = arg_n;
    _ = &n;
    return tables[@as(c_uint, @intCast(n))];
}
pub export fn backtrace(arg_name: symbol_t) void {
    var name = arg_name;
    _ = &name;
    Backtrace[TraceTop] = if (name == sym(@as(builtin_t, @bitCast(@as(c_long, NIL))))) sym(@as(builtin_t, @bitCast(@as(c_long, LAMBDA)))) else name;
    TraceTop = @as(u8, @bitCast(@as(i8, @truncate(modbacktrace(@as(c_int, @bitCast(@as(c_uint, TraceTop))) + @as(c_int, 1))))));
    if (@as(c_int, @bitCast(@as(c_uint, TraceStart))) == @as(c_int, @bitCast(@as(c_uint, TraceTop)))) {
        TraceStart = @as(u8, @bitCast(@as(i8, @truncate(modbacktrace(@as(c_int, @bitCast(@as(c_uint, TraceStart))) + @as(c_int, 1))))));
    }
}
pub export const ControlCodes: [145:0]u8 = "Null\x00SOH\x00STX\x00ETX\x00EOT\x00ENQ\x00ACK\x00Bell\x00Backspace\x00Tab\x00Newline\x00VT\x00Page\x00Return\x00SO\x00SI\x00DLE\x00DC1\x00DC2\x00DC3\x00DC4\x00NAK\x00SYN\x00ETB\x00CAN\x00EM\x00SUB\x00Escape\x00FS\x00GS\x00RS\x00US\x00Space\x00".*;
pub export fn pcharacter(arg_c: u8, arg_pfun: pfun_t) void {
    var c = arg_c;
    _ = &c;
    var pfun = arg_pfun;
    _ = &pfun;
    if (!((@as(c_int, @bitCast(@as(c_uint, Flags))) & (@as(c_int, 1) << @intCast(PRINTREADABLY))) != 0)) {
        pfun.?(@as(u8, @bitCast(c)));
    } else {
        pfun.?(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '#'))))));
        pfun.?(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '\\'))))));
        if (@as(c_int, @bitCast(@as(c_uint, c))) <= @as(c_int, 32)) {
            var p: [*c]const u8 = @as([*c]const u8, @ptrCast(@alignCast(&ControlCodes[@as(usize, @intCast(0))])));
            _ = &p;
            while (@as(c_int, @bitCast(@as(c_uint, c))) > @as(c_int, 0)) {
                p = (p + strlen(p)) + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
                c -%= 1;
            }
            pfstring(p, pfun);
        } else if (@as(c_int, @bitCast(@as(c_uint, c))) < @as(c_int, 127)) {
            pfun.?(@as(u8, @bitCast(c)));
        } else {
            pint(@as(c_int, @bitCast(@as(c_uint, c))), pfun);
        }
    }
}
pub export fn pstring(arg_s: [*c]u8, arg_pfun: pfun_t) void {
    var s = arg_s;
    _ = &s;
    var pfun = arg_pfun;
    _ = &pfun;
    while (s.* != 0) {
        pfun.?((blk: {
            const ref = &s;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }).*);
    }
}
pub export fn plispstring(arg_form: [*c]object, arg_pfun: pfun_t) void {
    var form = arg_form;
    _ = &form;
    var pfun = arg_pfun;
    _ = &pfun;
    plispstr(form.*.unnamed_0.unnamed_1.unnamed_0.name, pfun);
}
pub export fn pradix40(arg_name: symbol_t, arg_pfun: pfun_t) void {
    var name = arg_name;
    _ = &name;
    var pfun = arg_pfun;
    _ = &pfun;
    var x: u32 = @as(u32, @bitCast(@as(c_uint, @truncate(((name >> @intCast(2)) & @as(symbol_t, @bitCast(@as(c_long, @as(c_int, 1073741823))))) | ((name & @as(symbol_t, @bitCast(@as(c_long, @as(c_int, 3))))) << @intCast(30))))));
    _ = &x;
    {
        var d: c_int = 102400000;
        _ = &d;
        while (d > @as(c_int, 0)) : (d = @divTrunc(d, @as(c_int, 40))) {
            var j: u32 = x / @as(u32, @bitCast(d));
            _ = &j;
            var c: u8 = fromradix40(@as(u8, @bitCast(@as(u8, @truncate(j)))));
            _ = &c;
            if (@as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, 0)) return;
            pfun.?(c);
            x = x -% (j *% @as(u32, @bitCast(d)));
        }
    }
}
pub export fn pmantissa(arg_f: f32, arg_pfun: pfun_t) void {
    var f = arg_f;
    _ = &f;
    var pfun = arg_pfun;
    _ = &pfun;
    var sig: c_int = @as(c_int, @intFromFloat(floor(log10(@as(f64, @floatCast(f))))));
    _ = &sig;
    var mul: c_int = @as(c_int, @intFromFloat(pow(@as(f64, @floatFromInt(@as(c_int, 10))), @as(f64, @floatFromInt(@as(c_int, 5) - sig)))));
    _ = &mul;
    var i: c_int = @as(c_int, @intFromFloat(round(@as(f64, @floatCast(f * @as(f32, @floatFromInt(mul)))))));
    _ = &i;
    var point: bool = @as(c_int, 0) != 0;
    _ = &point;
    if (i == @as(c_int, 1000000)) {
        i = 100000;
        sig += 1;
    }
    if (sig < @as(c_int, 0)) {
        pfun.?(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '0'))))));
        pfun.?(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '.'))))));
        point = @as(c_int, 1) != 0;
        {
            var j: c_int = 0;
            _ = &j;
            while (j < (-sig - @as(c_int, 1))) : (j += 1) {
                pfun.?(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '0'))))));
            }
        }
    }
    mul = 100000;
    {
        var j: c_int = 0;
        _ = &j;
        while (j < @as(c_int, 7)) : (j += 1) {
            var d: c_int = @divTrunc(i, mul);
            _ = &d;
            pfun.?(@as(u8, @bitCast(@as(i8, @truncate(d + @as(c_int, '0'))))));
            i = i - (d * mul);
            if (i == @as(c_int, 0)) {
                if (!point) {
                    {
                        var k: c_int = j;
                        _ = &k;
                        while (k < sig) : (k += 1) {
                            pfun.?(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '0'))))));
                        }
                    }
                    pfun.?(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '.'))))));
                    pfun.?(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '0'))))));
                }
                return;
            }
            if ((j == sig) and (sig >= @as(c_int, 0))) {
                pfun.?(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '.'))))));
                point = @as(c_int, 1) != 0;
            }
            mul = @divTrunc(mul, @as(c_int, 10));
        }
    }
}
pub export fn pfloat(arg_f: f32, arg_pfun: pfun_t) void {
    var f = arg_f;
    _ = &f;
    var pfun = arg_pfun;
    _ = &pfun;
    if (__builtin_isnan(f) != 0) {
        pfstring("NaN", pfun);
        return;
    }
    if (@as(f64, @floatCast(f)) == 0.0) {
        pfun.?(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '0'))))));
        return;
    }
    if (__builtin_isinf_sign(f) != 0) {
        pfstring("Inf", pfun);
        return;
    }
    if (f < @as(f32, @floatFromInt(@as(c_int, 0)))) {
        pfun.?(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '-'))))));
        f = -f;
    }
    var e: c_int = 0;
    _ = &e;
    if ((@as(f64, @floatCast(f)) < 0.001) or (@as(f64, @floatCast(f)) >= 100000.0)) {
        e = @as(c_int, @intFromFloat(floor(log(@as(f64, @floatCast(f))) / 2.302585)));
        f = @as(f32, @floatCast(@as(f64, @floatCast(f)) / pow(@as(f64, @floatFromInt(@as(c_int, 10))), @as(f64, @floatFromInt(e)))));
    }
    pmantissa(f, pfun);
    if (e != @as(c_int, 0)) {
        pfun.?(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 'e'))))));
        pint(e, pfun);
    }
}
pub export fn plist(arg_form: [*c]object, arg_pfun: pfun_t) void {
    var form = arg_form;
    _ = &form;
    var pfun = arg_pfun;
    _ = &pfun;
    pfun.?(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '('))))));
    printobject(form.*.unnamed_0.unnamed_0.car, pfun);
    form = form.*.unnamed_0.unnamed_0.cdr;
    while ((form != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) and (@as(c_int, @intFromBool(listp(form))) != 0)) {
        pfun.?(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, ' '))))));
        printobject(form.*.unnamed_0.unnamed_0.car, pfun);
        yield_loop();
        form = form.*.unnamed_0.unnamed_0.cdr;
    }
    if (form != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        pfstring(" . ", pfun);
        printobject(form, pfun);
    }
    pfun.?(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, ')'))))));
}
pub export fn pstream(arg_form: [*c]object, arg_pfun: pfun_t) void {
    var form = arg_form;
    _ = &form;
    var pfun = arg_pfun;
    _ = &pfun;
    pfun.?(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '<'))))));
    var nstream: nstream_t = @as(nstream_t, @bitCast(@as(i8, @truncate(form.*.unnamed_0.unnamed_1.unnamed_0.integer >> @intCast(8)))));
    _ = &nstream;
    var n: bool = @as(c_int, @bitCast(@as(c_uint, nstream))) < @as(c_int, 16);
    _ = &n;
    var streamname: [*c]const u8 = (blk: {
        const tmp = if (@as(c_int, @intFromBool(n)) != 0) @as(c_int, @bitCast(@as(c_uint, nstream))) else @as(c_int, @bitCast(@as(c_uint, nstream))) - @as(c_int, 16);
        if (tmp >= 0) break :blk streamtable(if (@as(c_int, @intFromBool(n)) != 0) @as(c_int, 0) else @as(c_int, 1)) + @as(usize, @intCast(tmp)) else break :blk streamtable(if (@as(c_int, @intFromBool(n)) != 0) @as(c_int, 0) else @as(c_int, 1)) - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
    }).*.streamname;
    _ = &streamname;
    pfstring(streamname, pfun);
    pfstring("-stream ", pfun);
    pint(form.*.unnamed_0.unnamed_1.unnamed_0.integer & @as(c_int, 255), pfun);
    pfun.?(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '>'))))));
}
pub export fn loadfromlibrary(arg_env: [*c]object) void {
    var env = arg_env;
    _ = &env;
    GlobalStringIndex = 0;
    var line: [*c]object = readmain(&glibrary);
    _ = &line;
    while (line != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        _ = blk: {
            const tmp = cons(line, GCStack);
            GCStack = tmp;
            break :blk tmp;
        };
        _ = eval(line, env);
        _ = blk: {
            const tmp = GCStack.*.unnamed_0.unnamed_0.cdr;
            GCStack = tmp;
            break :blk tmp;
        };
        line = readmain(&glibrary);
    }
}
pub export const TerminalWidth: c_int = 80;
pub export var WritePtr: c_int = 0;
pub export var ReadPtr: c_int = 0;
pub export var LastWritePtr: c_int = 0;
pub export var KybdBuf: [333]u8 = @import("std").mem.zeroes([333]u8);
pub export var KybdAvailable: u8 = 0;
pub export fn esc(arg_p: c_int, arg_c: u8) void {
    var p = arg_p;
    _ = &p;
    var c = arg_c;
    _ = &c;
    _ = putchar(@as(c_int, '\x1b'));
    _ = putchar(@as(c_int, '['));
    _ = putchar(@as(c_int, @bitCast(@as(c_uint, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '0') + @divTrunc(p, @as(c_int, 100))))))))));
    _ = putchar(@as(c_int, @bitCast(@as(c_uint, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '0') + @import("std").zig.c_translation.signedRemainder(@divTrunc(p, @as(c_int, 10)), @as(c_int, 10))))))))));
    _ = putchar(@as(c_int, @bitCast(@as(c_uint, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '0') + @import("std").zig.c_translation.signedRemainder(p, @as(c_int, 10))))))))));
    _ = putchar(@as(c_int, @bitCast(@as(c_uint, c))));
}
pub export fn hilight(arg_c: u8) void {
    var c = arg_c;
    _ = &c;
    _ = putchar(@as(c_int, '\x1b'));
    _ = putchar(@as(c_int, '['));
    _ = putchar(@as(c_int, @bitCast(@as(c_uint, c))));
    _ = putchar(@as(c_int, 'm'));
}
pub export fn Highlight(arg_p: c_int, arg_wp: c_int, arg_invert: u8) void {
    var p = arg_p;
    _ = &p;
    var wp = arg_wp;
    _ = &wp;
    var invert = arg_invert;
    _ = &invert;
    wp = wp + @as(c_int, 2);
    var line: c_int = @divTrunc(wp, TerminalWidth);
    _ = &line;
    var col: c_int = @import("std").zig.c_translation.signedRemainder(wp, TerminalWidth);
    _ = &col;
    var targetline: c_int = @divTrunc(wp - p, TerminalWidth);
    _ = &targetline;
    var targetcol: c_int = @import("std").zig.c_translation.signedRemainder(wp - p, TerminalWidth);
    _ = &targetcol;
    var up: c_int = line - targetline;
    _ = &up;
    var left: c_int = col - targetcol;
    _ = &left;
    if (p != 0) {
        if (up != 0) {
            esc(up, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 'A'))))));
        }
        if (col > targetcol) {
            esc(left, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 'D'))))));
        } else {
            esc(-left, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 'C'))))));
        }
        if (invert != 0) {
            hilight(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '7'))))));
        }
        _ = putchar(@as(c_int, '('));
        _ = putchar(@as(c_int, '\x08'));
        if (up != 0) {
            esc(up, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 'B'))))));
        }
        if (col > targetcol) {
            esc(left, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 'C'))))));
        } else {
            esc(-left, @as(u8, @bitCast(@as(i8, @truncate(@as(c_int, 'D'))))));
        }
        _ = putchar(@as(c_int, '\x08'));
        _ = putchar(@as(c_int, ')'));
        if (invert != 0) {
            hilight(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '0'))))));
        }
    }
}
pub export fn processkey(arg_c: u8) void {
    var c = arg_c;
    _ = &c;
    if (@as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, 27)) {
        _ = blk: {
            const tmp = @as(flags_t, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_uint, Flags))) | (@as(c_int, 1) << @intCast(ESCAPE))))));
            Flags = tmp;
            break :blk tmp;
        };
        return;
    }
    if ((@as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, '\n')) or (@as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, '\r'))) {
        pserial(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '\n'))))));
        KybdAvailable = 1;
        ReadPtr = 0;
        LastWritePtr = WritePtr;
        return;
    }
    if ((@as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, 8)) or (@as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, 127))) {
        if (WritePtr > @as(c_int, 0)) {
            WritePtr -= 1;
            _ = putchar(@as(c_int, 8));
            _ = putchar(@as(c_int, ' '));
            _ = putchar(@as(c_int, 8));
            if (WritePtr != 0) {
                c = KybdBuf[@as(c_uint, @intCast(WritePtr - @as(c_int, 1)))];
            }
        }
    } else if (@as(c_int, @bitCast(@as(c_uint, c))) == @as(c_int, 9)) {
        {
            var i: c_int = 0;
            _ = &i;
            while (i < LastWritePtr) : (i += 1) {
                _ = putchar(@as(c_int, @bitCast(@as(c_uint, KybdBuf[@as(c_uint, @intCast(i))]))));
            }
        }
        WritePtr = LastWritePtr;
    } else if (WritePtr < @as(c_int, 333)) {
        KybdBuf[@as(c_uint, @intCast(blk: {
            const ref = &WritePtr;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }))] = c;
        _ = putchar(@as(c_int, @bitCast(@as(c_uint, c))));
    }
    return;
}
pub export var input_buf: [*c]const u8 = null;
pub export var input_pos: c_int = 0;
pub export var input_len: c_int = 0;
pub export var loop_done: bool = @as(c_int, 0) != 0;
pub export fn nextitem(arg_gfun: gfun_t) [*c]object {
    var gfun = arg_gfun;
    _ = &gfun;
    var ch: c_int = gfun.?();
    _ = &ch;
    if (loop_done) return null;
    while ((((ch == @as(c_int, ' ')) or (ch == @as(c_int, '\n'))) or (ch == @as(c_int, '\r'))) or (ch == @as(c_int, '\t'))) {
        ch = gfun.?();
    }
    if (ch == @as(c_int, ';')) {
        while (true) {
            ch = gfun.?();
            if ((ch == @as(c_int, ';')) or (ch == @as(c_int, '('))) {
                _ = blk: {
                    const tmp = @as(flags_t, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_uint, Flags))) | (@as(c_int, 1) << @intCast(NOECHO))))));
                    Flags = tmp;
                    break :blk tmp;
                };
            }
            if (!(ch != @as(c_int, '('))) break;
        }
    }
    if (ch == @as(c_int, '\n')) {
        ch = gfun.?();
    }
    if (ch == -@as(c_int, 1)) return null;
    if (ch == @as(c_int, ')')) return @as([*c]object, @ptrFromInt(KET));
    if (ch == @as(c_int, '(')) return @as([*c]object, @ptrFromInt(BRA));
    if (ch == @as(c_int, '\'')) return @as([*c]object, @ptrFromInt(QUO));
    if (ch == @as(c_int, '"')) return readstring(@as(u8, @bitCast(@as(i8, @truncate(@as(c_int, '"'))))), @as(c_int, 1) != 0, gfun);
    var index_1: c_int = 0;
    _ = &index_1;
    var base: c_int = 10;
    _ = &base;
    var sign: c_int = 1;
    _ = &sign;
    var buffer: [36]u8 = undefined;
    _ = &buffer;
    var bufmax: c_int = @as(c_int, 36) - @as(c_int, 3);
    _ = &bufmax;
    var result: c_uint = 0;
    _ = &result;
    var isfloat: bool = @as(c_int, 0) != 0;
    _ = &isfloat;
    var fresult: f32 = @as(f32, @floatCast(0.0));
    _ = &fresult;
    if (ch == @as(c_int, '+')) {
        buffer[@as(c_uint, @intCast(blk: {
            const ref = &index_1;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }))] = @as(u8, @bitCast(@as(i8, @truncate(ch))));
        ch = gfun.?();
    } else if (ch == @as(c_int, '-')) {
        sign = -@as(c_int, 1);
        buffer[@as(c_uint, @intCast(blk: {
            const ref = &index_1;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }))] = @as(u8, @bitCast(@as(i8, @truncate(ch))));
        ch = gfun.?();
    } else if (ch == @as(c_int, '.')) {
        buffer[@as(c_uint, @intCast(blk: {
            const ref = &index_1;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }))] = @as(u8, @bitCast(@as(i8, @truncate(ch))));
        ch = gfun.?();
        if (ch == @as(c_int, ' ')) return @as([*c]object, @ptrFromInt(DOT));
        isfloat = @as(c_int, 1) != 0;
    } else if (ch == @as(c_int, '#')) {
        ch = gfun.?();
        var ch2: u8 = @as(u8, @bitCast(@as(i8, @truncate(ch & ~@as(c_int, 32)))));
        _ = &ch2;
        if (ch == @as(c_int, '\\')) {
            base = 0;
            ch = gfun.?();
            if (((((ch == @as(c_int, ' ')) or (ch == @as(c_int, '\n'))) or (ch == @as(c_int, '\r'))) or (ch == @as(c_int, '\t'))) or (((((ch == @as(c_int, ')')) or (ch == @as(c_int, '('))) or (ch == @as(c_int, '"'))) or (ch == @as(c_int, '#'))) or (ch == @as(c_int, '\'')))) return character(@as(u8, @bitCast(@as(i8, @truncate(ch))))) else {
                LastChar = @as(u8, @bitCast(@as(i8, @truncate(ch))));
            }
        } else if (ch == @as(c_int, '|')) {
            while (true) {
                while (gfun.?() != @as(c_int, '|')) {}
                if (!(gfun.?() != @as(c_int, '#'))) break;
            }
            return nextitem(gfun);
        } else if (@as(c_int, @bitCast(@as(c_uint, ch2))) == @as(c_int, 'B')) {
            base = 2;
        } else if (@as(c_int, @bitCast(@as(c_uint, ch2))) == @as(c_int, 'O')) {
            base = 8;
        } else if (@as(c_int, @bitCast(@as(c_uint, ch2))) == @as(c_int, 'X')) {
            base = 16;
        } else if (ch == @as(c_int, '\'')) return nextitem(gfun) else if (ch == @as(c_int, '.')) {
            _ = blk: {
                const tmp = @as(flags_t, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_uint, Flags))) | (@as(c_int, 1) << @intCast(NOESC))))));
                Flags = tmp;
                break :blk tmp;
            };
            var result_1: [*c]object = eval(sread(gfun), null);
            _ = &result_1;
            _ = blk: {
                const tmp = @as(flags_t, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_uint, Flags))) & ~(@as(c_int, 1) << @intCast(NOESC))))));
                Flags = tmp;
                break :blk tmp;
            };
            return result_1;
        } else if (ch == @as(c_int, '(')) {
            LastChar = @as(u8, @bitCast(@as(i8, @truncate(ch))));
            return readarray(@as(c_int, 1), sread(gfun));
        } else if (ch == @as(c_int, '*')) return readbitarray(gfun) else if (((ch >= @as(c_int, '1')) and (ch <= @as(c_int, '9'))) and ((gfun.?() & ~@as(c_int, 32)) == @as(c_int, 'A'))) return readarray(ch - @as(c_int, '0'), sread(gfun)) else {
            error2("illegal character after #");
        }
        ch = gfun.?();
    }
    var valid: c_int = undefined;
    _ = &valid;
    if (ch == @as(c_int, '.')) {
        valid = 0;
    } else if (@as(c_int, @bitCast(@as(c_int, digitvalue(@as(u8, @bitCast(@as(i8, @truncate(ch)))))))) < base) {
        valid = 1;
    } else {
        valid = -@as(c_int, 1);
    }
    var isexponent: bool = @as(c_int, 0) != 0;
    _ = &isexponent;
    var exponent: c_int = 0;
    _ = &exponent;
    var esign: c_int = 1;
    _ = &esign;
    var divisor: f32 = @as(f32, @floatCast(10.0));
    _ = &divisor;
    while ((!((((ch == @as(c_int, ' ')) or (ch == @as(c_int, '\n'))) or (ch == @as(c_int, '\r'))) or (ch == @as(c_int, '\t'))) and !(((((ch == @as(c_int, ')')) or (ch == @as(c_int, '('))) or (ch == @as(c_int, '"'))) or (ch == @as(c_int, '#'))) or (ch == @as(c_int, '\'')))) and (index_1 < bufmax)) {
        buffer[@as(c_uint, @intCast(blk: {
            const ref = &index_1;
            const tmp = ref.*;
            ref.* += 1;
            break :blk tmp;
        }))] = @as(u8, @bitCast(@as(i8, @truncate(ch))));
        if (((base == @as(c_int, 10)) and (ch == @as(c_int, '.'))) and !isexponent) {
            isfloat = @as(c_int, 1) != 0;
            fresult = @as(f32, @floatFromInt(result));
        } else if ((base == @as(c_int, 10)) and ((ch == @as(c_int, 'e')) or (ch == @as(c_int, 'E')))) {
            if (!isfloat) {
                isfloat = @as(c_int, 1) != 0;
                fresult = @as(f32, @floatFromInt(result));
            }
            isexponent = @as(c_int, 1) != 0;
            if (valid == @as(c_int, 1)) {
                valid = 0;
            } else {
                valid = -@as(c_int, 1);
            }
        } else if ((@as(c_int, @intFromBool(isexponent)) != 0) and (ch == @as(c_int, '-'))) {
            esign = -esign;
        } else if ((@as(c_int, @intFromBool(isexponent)) != 0) and (ch == @as(c_int, '+'))) {} else {
            var digit: c_int = @as(c_int, @bitCast(@as(c_int, digitvalue(@as(u8, @bitCast(@as(i8, @truncate(ch))))))));
            _ = &digit;
            if ((@as(c_int, @bitCast(@as(c_int, digitvalue(@as(u8, @bitCast(@as(i8, @truncate(ch)))))))) < base) and (valid != -@as(c_int, 1))) {
                valid = 1;
            } else {
                valid = -@as(c_int, 1);
            }
            if (isexponent) {
                exponent = (exponent * @as(c_int, 10)) + digit;
            } else if (isfloat) {
                fresult = fresult + (@as(f32, @floatFromInt(digit)) / divisor);
                divisor = @as(f32, @floatCast(@as(f64, @floatCast(divisor)) * 10.0));
            } else {
                result = (result *% @as(c_uint, @bitCast(base))) +% @as(c_uint, @bitCast(digit));
            }
        }
        ch = gfun.?();
    }
    buffer[@as(c_uint, @intCast(index_1))] = '\x00';
    if (((((ch == @as(c_int, ')')) or (ch == @as(c_int, '('))) or (ch == @as(c_int, '"'))) or (ch == @as(c_int, '#'))) or (ch == @as(c_int, '\''))) {
        LastChar = @as(u8, @bitCast(@as(i8, @truncate(ch))));
    }
    if ((@as(c_int, @intFromBool(isfloat)) != 0) and (valid == @as(c_int, 1))) return makefloat(@as(f32, @floatCast(@as(f64, @floatCast(fresult * @as(f32, @floatFromInt(sign)))) * pow(@as(f64, @floatFromInt(@as(c_int, 10))), @as(f64, @floatFromInt(exponent * esign)))))) else if (valid == @as(c_int, 1)) {
        if ((base == @as(c_int, 10)) and (result > (@as(c_uint, @bitCast(@as(c_int, 2147483647))) +% @as(c_uint, @bitCast(@divTrunc(@as(c_int, 1) - sign, @as(c_int, 2))))))) return makefloat(@as(f32, @floatFromInt(result)) * @as(f32, @floatFromInt(sign)));
        return number(@as(c_int, @bitCast(result *% @as(c_uint, @bitCast(sign)))));
    } else if (base == @as(c_int, 0)) {
        if (index_1 == @as(c_int, 1)) return character(@as(u8, @bitCast(buffer[@as(c_uint, @intCast(@as(c_int, 0)))])));
        var p: [*c]const u8 = @as([*c]const u8, @ptrCast(@alignCast(&ControlCodes[@as(usize, @intCast(0))])));
        _ = &p;
        var c: u8 = 0;
        _ = &c;
        while (@as(c_int, @bitCast(@as(c_uint, c))) < @as(c_int, 33)) {
            if (strcasecmp(@as([*c]u8, @ptrCast(@alignCast(&buffer[@as(usize, @intCast(0))]))), p) == @as(c_int, 0)) return character(@as(u8, @bitCast(c)));
            p = (p + strlen(p)) + @as(usize, @bitCast(@as(isize, @intCast(@as(c_int, 1)))));
            c +%= 1;
        }
        if (index_1 == @as(c_int, 3)) return character(@as(u8, @bitCast(@as(i8, @truncate(((((@as(c_int, @bitCast(@as(c_uint, buffer[@as(c_uint, @intCast(@as(c_int, 0)))]))) * @as(c_int, 10)) + @as(c_int, @bitCast(@as(c_uint, buffer[@as(c_uint, @intCast(@as(c_int, 1)))])))) * @as(c_int, 10)) + @as(c_int, @bitCast(@as(c_uint, buffer[@as(c_uint, @intCast(@as(c_int, 2)))])))) - @as(c_int, 5328))))));
        error2("unknown character");
    }
    var x: builtin_t = lookupbuiltin(@as([*c]u8, @ptrCast(@alignCast(&buffer[@as(usize, @intCast(0))]))));
    _ = &x;
    if (x == @as(builtin_t, @bitCast(@as(c_long, NIL)))) return null;
    if (x != @as(builtin_t, @bitCast(@as(c_long, @as(c_int, 198967296))))) return bsymbol(x);
    if ((index_1 <= @as(c_int, 6)) and (@as(c_int, @intFromBool(valid40(@as([*c]u8, @ptrCast(@alignCast(&buffer[@as(usize, @intCast(0))])))))) != 0)) return intern(@as(symbol_t, @bitCast(@as(c_ulong, (pack40(@as([*c]u8, @ptrCast(@alignCast(&buffer[@as(usize, @intCast(0))])))) << @intCast(2)) | ((pack40(@as([*c]u8, @ptrCast(@alignCast(&buffer[@as(usize, @intCast(0))])))) & @as(c_uint, 3221225472)) >> @intCast(30))))));
    return internlong(@as([*c]u8, @ptrCast(@alignCast(&buffer[@as(usize, @intCast(0))]))));
}
pub export fn readrest(arg_gfun: gfun_t) [*c]object {
    var gfun = arg_gfun;
    _ = &gfun;
    var item: [*c]object = nextitem(gfun);
    _ = &item;
    var head: [*c]object = null;
    _ = &head;
    var tail: [*c]object = null;
    _ = &tail;
    while (item != @as([*c]object, @ptrFromInt(KET))) {
        if (item == @as([*c]object, @ptrFromInt(BRA))) {
            item = readrest(gfun);
        } else if (item == @as([*c]object, @ptrFromInt(QUO))) {
            item = cons(bsymbol(@as(builtin_t, @bitCast(@as(c_long, QUOTE)))), cons(sread(gfun), null));
        } else if (item == @as([*c]object, @ptrFromInt(DOT))) {
            tail.*.unnamed_0.unnamed_0.cdr = sread(gfun);
            if (readrest(gfun) != @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
                error2("malformed list");
            }
            return head;
        } else {
            var cell: [*c]object = cons(item, null);
            _ = &cell;
            if (head == @as([*c]object, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
                head = cell;
            } else {
                tail.*.unnamed_0.unnamed_0.cdr = cell;
            }
            tail = cell;
            item = nextitem(gfun);
        }
    }
    return head;
}
pub export var GFun: gfun_t = @import("std").mem.zeroes(gfun_t);
pub export fn glast() c_int {
    if (LastChar != 0) {
        var temp: u8 = LastChar;
        _ = &temp;
        LastChar = 0;
        return @as(c_int, @bitCast(@as(c_uint, temp)));
    }
    return GFun.?();
}
pub export fn initenv() void {
    GlobalEnv = null;
    tee = bsymbol(@as(builtin_t, @bitCast(@as(c_long, TEE))));
}
pub export fn initgfx() void {}
pub export fn print_version() void {
    pfstring("4.8d", &pserial);
    pln(&pserial);
}
pub export fn ulisperror() void {
    _ = blk: {
        const tmp = @as(flags_t, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_uint, Flags))) & ~(@as(c_int, 1) << @intCast(NOESC))))));
        Flags = tmp;
        break :blk tmp;
    };
    BreakLevel = 0;
    TraceStart = 0;
    TraceTop = 0;
    {
        var i: c_int = 0;
        _ = &i;
        while (i < @as(c_int, 3)) : (i += 1) {
            TraceDepth[@as(c_uint, @intCast(i))] = 0;
        }
    }
    if (!((@as(c_int, @bitCast(@as(c_uint, Flags))) & (@as(c_int, 1) << @intCast(LIBRARYLOADED))) != 0)) {
        _ = blk: {
            const tmp = @as(flags_t, @bitCast(@as(c_short, @truncate(@as(c_int, @bitCast(@as(c_uint, Flags))) | (@as(c_int, 1) << @intCast(LIBRARYLOADED))))));
            Flags = tmp;
            break :blk tmp;
        };
        loadfromlibrary(null);
    }
}
pub export var max_steps: c_int = 9999999;
pub export var steps: c_int = 0;
pub export var should_limit_steps: bool = @as(c_int, 0) != 0;
pub export var should_wait_for_host: bool = @as(c_int, 1) != 0;
pub export fn loop() void {
    steps = 0;
    loop_done = @as(c_int, 0) != 0;
    if (!(_setjmp(@as([*c]struct___jmp_buf_tag, @ptrCast(@alignCast(&toplevel_handler[@as(usize, @intCast(0))])))) != 0)) {
        var autorun: c_int = 13;
        _ = &autorun;
        if (autorun == @as(c_int, 12)) {
            autorunimage();
        }
    }
    ulisperror();
    repl(null);
}
pub export fn wait_for_tick_on_host() bool {
    return @as(c_int, 0) != 0;
}
pub export fn wait_for_tick() bool {
    steps += 1;
    if (should_wait_for_host) {
        if (wait_for_tick_on_host()) {
            errorend();
            return @as(c_int, 1) != 0;
        }
    }
    if (!should_limit_steps or (steps <= max_steps)) {
        return @as(c_int, 0) != 0;
    }
    pfstring("Error: Maximum steps exceeded: ", &pserial);
    printobject(number(max_steps), &pserial);
    pln(&pserial);
    errorend();
    return @as(c_int, 1) != 0;
}
pub export fn stop_loop() void {
    errorend();
}
pub export fn main(arg_argc: c_int, arg_argv: [*c][*c]u8) c_int {
    var argc = arg_argc;
    _ = &argc;
    var argv = arg_argv;
    _ = &argv;
    setup();
    linenoiseSetMultiLine(@as(c_int, 1));
    _ = linenoiseHistorySetMaxLen(@as(c_int, 1000));
    const prompt: [2:0]u8 = "> ".*;
    _ = &prompt;
    var line: [*c]u8 = undefined;
    _ = &line;
    while ((blk: {
        const tmp = linenoise(@as([*c]const u8, @ptrCast(@alignCast(&prompt[@as(usize, @intCast(0))]))));
        line = tmp;
        break :blk tmp;
    }) != @as([*c]u8, @ptrCast(@alignCast(@as(?*anyopaque, @ptrFromInt(@as(c_int, 0))))))) {
        _ = linenoiseHistoryAdd(line);
        evaluate(line);
        linenoiseFree(@as(?*anyopaque, @ptrCast(line)));
    }
    return 0;
}
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 21);
pub const __clang_minor__ = @as(c_int, 1);
pub const __clang_patchlevel__ = @as(c_int, 0);
pub const __clang_version__ = "21.1.0 (https://github.com/ziglang/zig-bootstrap ff9c6597b811192726b277fccc9d4d6f434f3a75)";
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __GXX_ABI_VERSION = @as(c_int, 1002);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __MEMORY_SCOPE_SYSTEM = @as(c_int, 0);
pub const __MEMORY_SCOPE_DEVICE = @as(c_int, 1);
pub const __MEMORY_SCOPE_WRKGRP = @as(c_int, 2);
pub const __MEMORY_SCOPE_WVFRNT = @as(c_int, 3);
pub const __MEMORY_SCOPE_SINGLE = @as(c_int, 4);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __FPCLASS_SNAN = @as(c_int, 0x0001);
pub const __FPCLASS_QNAN = @as(c_int, 0x0002);
pub const __FPCLASS_NEGINF = @as(c_int, 0x0004);
pub const __FPCLASS_NEGNORMAL = @as(c_int, 0x0008);
pub const __FPCLASS_NEGSUBNORMAL = @as(c_int, 0x0010);
pub const __FPCLASS_NEGZERO = @as(c_int, 0x0020);
pub const __FPCLASS_POSZERO = @as(c_int, 0x0040);
pub const __FPCLASS_POSSUBNORMAL = @as(c_int, 0x0080);
pub const __FPCLASS_POSNORMAL = @as(c_int, 0x0100);
pub const __FPCLASS_POSINF = @as(c_int, 0x0200);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Clang 21.1.0 (https://github.com/ziglang/zig-bootstrap ff9c6597b811192726b277fccc9d4d6f434f3a75)";
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 0);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __clang_literal_encoding__ = "UTF-8";
pub const __clang_wide_literal_encoding__ = "UTF-32";
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const _LP64 = @as(c_int, 1);
pub const __LP64__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 1);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_WIDTH__ = @as(c_int, 64);
pub const __LLONG_WIDTH__ = @as(c_int, 64);
pub const __BITINT_MAXWIDTH__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 8388608, .decimal);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __WINT_WIDTH__ = @as(c_int, 32);
pub const __INTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __SIZE_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __UINTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 8);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 16);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_WINT_T__ = @as(c_int, 4);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTMAX_TYPE__ = c_long;
pub const __INTMAX_FMTd__ = "ld";
pub const __INTMAX_FMTi__ = "li";
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`");
// (no file):95:9
pub const __INTMAX_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const __UINTMAX_TYPE__ = c_ulong;
pub const __UINTMAX_FMTo__ = "lo";
pub const __UINTMAX_FMTu__ = "lu";
pub const __UINTMAX_FMTx__ = "lx";
pub const __UINTMAX_FMTX__ = "lX";
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`");
// (no file):102:9
pub const __UINTMAX_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const __PTRDIFF_TYPE__ = c_long;
pub const __PTRDIFF_FMTd__ = "ld";
pub const __PTRDIFF_FMTi__ = "li";
pub const __INTPTR_TYPE__ = c_long;
pub const __INTPTR_FMTd__ = "ld";
pub const __INTPTR_FMTi__ = "li";
pub const __SIZE_TYPE__ = c_ulong;
pub const __SIZE_FMTo__ = "lo";
pub const __SIZE_FMTu__ = "lu";
pub const __SIZE_FMTx__ = "lx";
pub const __SIZE_FMTX__ = "lX";
pub const __WCHAR_TYPE__ = c_int;
pub const __WINT_TYPE__ = c_uint;
pub const __SIG_ATOMIC_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTPTR_TYPE__ = c_ulong;
pub const __UINTPTR_FMTo__ = "lo";
pub const __UINTPTR_FMTu__ = "lu";
pub const __UINTPTR_FMTx__ = "lx";
pub const __UINTPTR_FMTX__ = "lX";
pub const __FLT16_DENORM_MIN__ = @as(f16, 5.9604644775390625e-8);
pub const __FLT16_NORM_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT16_DIG__ = @as(c_int, 3);
pub const __FLT16_DECIMAL_DIG__ = @as(c_int, 5);
pub const __FLT16_EPSILON__ = @as(f16, 9.765625e-4);
pub const __FLT16_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT16_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT16_MANT_DIG__ = @as(c_int, 11);
pub const __FLT16_MAX_10_EXP__ = @as(c_int, 4);
pub const __FLT16_MAX_EXP__ = @as(c_int, 16);
pub const __FLT16_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_MIN_10_EXP__ = -@as(c_int, 4);
pub const __FLT16_MIN_EXP__ = -@as(c_int, 13);
pub const __FLT16_MIN__ = @as(f16, 6.103515625e-5);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_NORM_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = @as(f64, 4.9406564584124654e-324);
pub const __DBL_NORM_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = @as(f64, 2.2204460492503131e-16);
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = @as(f64, 2.2250738585072014e-308);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_NORM_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);
pub const __LDBL_DIG__ = @as(c_int, 18);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 21);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __LDBL_MANT_DIG__ = @as(c_int, 64);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __POINTER_WIDTH__ = @as(c_int, 64);
pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 16);
pub const __WINT_UNSIGNED__ = @as(c_int, 1);
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub inline fn __INT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub inline fn __INT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub inline fn __INT32_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT64_TYPE__ = c_long;
pub const __INT64_FMTd__ = "ld";
pub const __INT64_FMTi__ = "li";
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`");
// (no file):207:9
pub const __INT64_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub inline fn __UINT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub inline fn __UINT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __UINT16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`");
// (no file):232:9
pub const __UINT32_C = @import("std").zig.c_translation.Macros.U_SUFFIX;
pub const __UINT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulong;
pub const __UINT64_FMTo__ = "lo";
pub const __UINT64_FMTu__ = "lu";
pub const __UINT64_FMTx__ = "lx";
pub const __UINT64_FMTX__ = "lX";
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`");
// (no file):241:9
pub const __UINT64_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const __UINT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __INT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_long;
pub const __INT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_LEAST64_FMTd__ = "ld";
pub const __INT_LEAST64_FMTi__ = "li";
pub const __UINT_LEAST64_TYPE__ = c_ulong;
pub const __UINT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_LEAST64_FMTo__ = "lo";
pub const __UINT_LEAST64_FMTu__ = "lu";
pub const __UINT_LEAST64_FMTx__ = "lx";
pub const __UINT_LEAST64_FMTX__ = "lX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_TYPE__ = c_long;
pub const __INT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_FAST64_FMTd__ = "ld";
pub const __INT_FAST64_FMTi__ = "li";
pub const __UINT_FAST64_TYPE__ = c_ulong;
pub const __UINT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_FAST64_FMTo__ = "lo";
pub const __UINT_FAST64_FMTu__ = "lu";
pub const __UINT_FAST64_FMTx__ = "lx";
pub const __UINT_FAST64_FMTX__ = "lX";
pub const __USER_LABEL_PREFIX__ = "";
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __GCC_DESTRUCTIVE_SIZE = @as(c_int, 64);
pub const __GCC_CONSTRUCTIVE_SIZE = @as(c_int, 64);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __NO_INLINE__ = @as(c_int, 1);
pub const __PIC__ = @as(c_int, 2);
pub const __pic__ = @as(c_int, 2);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __ELF__ = @as(c_int, 1);
pub const __GCC_ASM_FLAG_OUTPUTS__ = @as(c_int, 1);
pub const __code_model_small__ = @as(c_int, 1);
pub const __amd64__ = @as(c_int, 1);
pub const __amd64 = @as(c_int, 1);
pub const __x86_64 = @as(c_int, 1);
pub const __x86_64__ = @as(c_int, 1);
pub const __SEG_GS = @as(c_int, 1);
pub const __SEG_FS = @as(c_int, 1);
pub const __seg_gs = @compileError("unable to translate macro: undefined identifier `address_space`");
// (no file):375:9
pub const __seg_fs = @compileError("unable to translate macro: undefined identifier `address_space`");
// (no file):376:9
pub const __corei7 = @as(c_int, 1);
pub const __corei7__ = @as(c_int, 1);
pub const __tune_corei7__ = @as(c_int, 1);
pub const __REGISTER_PREFIX__ = "";
pub const __NO_MATH_INLINES = @as(c_int, 1);
pub const __AES__ = @as(c_int, 1);
pub const __VAES__ = @as(c_int, 1);
pub const __PCLMUL__ = @as(c_int, 1);
pub const __VPCLMULQDQ__ = @as(c_int, 1);
pub const __LAHF_SAHF__ = @as(c_int, 1);
pub const __LZCNT__ = @as(c_int, 1);
pub const __RDRND__ = @as(c_int, 1);
pub const __FSGSBASE__ = @as(c_int, 1);
pub const __BMI__ = @as(c_int, 1);
pub const __BMI2__ = @as(c_int, 1);
pub const __POPCNT__ = @as(c_int, 1);
pub const __PRFCHW__ = @as(c_int, 1);
pub const __RDSEED__ = @as(c_int, 1);
pub const __ADX__ = @as(c_int, 1);
pub const __MOVBE__ = @as(c_int, 1);
pub const __FMA__ = @as(c_int, 1);
pub const __F16C__ = @as(c_int, 1);
pub const __GFNI__ = @as(c_int, 1);
pub const __EVEX512__ = @as(c_int, 1);
pub const __AVX512CD__ = @as(c_int, 1);
pub const __AVX512VPOPCNTDQ__ = @as(c_int, 1);
pub const __AVX512VNNI__ = @as(c_int, 1);
pub const __AVX512DQ__ = @as(c_int, 1);
pub const __AVX512BITALG__ = @as(c_int, 1);
pub const __AVX512BW__ = @as(c_int, 1);
pub const __AVX512VL__ = @as(c_int, 1);
pub const __EVEX256__ = @as(c_int, 1);
pub const __AVX512VBMI__ = @as(c_int, 1);
pub const __AVX512VBMI2__ = @as(c_int, 1);
pub const __AVX512IFMA__ = @as(c_int, 1);
pub const __AVX512VP2INTERSECT__ = @as(c_int, 1);
pub const __SHA__ = @as(c_int, 1);
pub const __FXSR__ = @as(c_int, 1);
pub const __XSAVE__ = @as(c_int, 1);
pub const __XSAVEOPT__ = @as(c_int, 1);
pub const __XSAVEC__ = @as(c_int, 1);
pub const __XSAVES__ = @as(c_int, 1);
pub const __PKU__ = @as(c_int, 1);
pub const __CLFLUSHOPT__ = @as(c_int, 1);
pub const __CLWB__ = @as(c_int, 1);
pub const __SHSTK__ = @as(c_int, 1);
pub const __KL__ = @as(c_int, 1);
pub const __WIDEKL__ = @as(c_int, 1);
pub const __RDPID__ = @as(c_int, 1);
pub const __MOVDIRI__ = @as(c_int, 1);
pub const __MOVDIR64B__ = @as(c_int, 1);
pub const __INVPCID__ = @as(c_int, 1);
pub const __CRC32__ = @as(c_int, 1);
pub const __AVX512F__ = @as(c_int, 1);
pub const __AVX2__ = @as(c_int, 1);
pub const __AVX__ = @as(c_int, 1);
pub const __SSE4_2__ = @as(c_int, 1);
pub const __SSE4_1__ = @as(c_int, 1);
pub const __SSSE3__ = @as(c_int, 1);
pub const __SSE3__ = @as(c_int, 1);
pub const __SSE2__ = @as(c_int, 1);
pub const __SSE2_MATH__ = @as(c_int, 1);
pub const __SSE__ = @as(c_int, 1);
pub const __SSE_MATH__ = @as(c_int, 1);
pub const __MMX__ = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = @as(c_int, 1);
pub const __SIZEOF_FLOAT128__ = @as(c_int, 16);
pub const unix = @as(c_int, 1);
pub const __unix = @as(c_int, 1);
pub const __unix__ = @as(c_int, 1);
pub const linux = @as(c_int, 1);
pub const __linux = @as(c_int, 1);
pub const __linux__ = @as(c_int, 1);
pub const __gnu_linux__ = @as(c_int, 1);
pub const __FLOAT128__ = @as(c_int, 1);
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const __STDC_EMBED_NOT_FOUND__ = @as(c_int, 0);
pub const __STDC_EMBED_FOUND__ = @as(c_int, 1);
pub const __STDC_EMBED_EMPTY__ = @as(c_int, 2);
pub const __GLIBC_MINOR__ = @as(c_int, 35);
pub const __HAS_RANDOM__ = @as(c_int, 1);
pub const __GCC_HAVE_DWARF2_CFI_ASM = @as(c_int, 1);
pub const VERSION = "4.8d";
pub const lisplibrary = "";
pub const __CLANG_LIMITS_H = "";
pub const _GCC_LIMITS_H_ = "";
pub const _LIBC_LIMITS_H_ = @as(c_int, 1);
pub const __GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION = "";
pub const _FEATURES_H = @as(c_int, 1);
pub const __KERNEL_STRICT_NAMES = "";
pub inline fn __GNUC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub inline fn __glibc_clang_prereq(maj: anytype, min: anytype) @TypeOf(((__clang_major__ << @as(c_int, 16)) + __clang_minor__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__clang_major__ << @as(c_int, 16)) + __clang_minor__) >= ((maj << @as(c_int, 16)) + min);
}
pub const __GLIBC_USE = @compileError("unable to translate macro: undefined identifier `__GLIBC_USE_`");
// /usr/include/features.h:186:9
pub const _DEFAULT_SOURCE = @as(c_int, 1);
pub const __GLIBC_USE_ISOC2X = @as(c_int, 0);
pub const __USE_ISOC11 = @as(c_int, 1);
pub const __USE_ISOC99 = @as(c_int, 1);
pub const __USE_ISOC95 = @as(c_int, 1);
pub const __USE_POSIX_IMPLICITLY = @as(c_int, 1);
pub const _POSIX_SOURCE = @as(c_int, 1);
pub const _POSIX_C_SOURCE = @as(c_long, 200809);
pub const __USE_POSIX = @as(c_int, 1);
pub const __USE_POSIX2 = @as(c_int, 1);
pub const __USE_POSIX199309 = @as(c_int, 1);
pub const __USE_POSIX199506 = @as(c_int, 1);
pub const __USE_XOPEN2K = @as(c_int, 1);
pub const __USE_XOPEN2K8 = @as(c_int, 1);
pub const _ATFILE_SOURCE = @as(c_int, 1);
pub const __WORDSIZE = @as(c_int, 64);
pub const __WORDSIZE_TIME64_COMPAT32 = @as(c_int, 1);
pub const __SYSCALL_WORDSIZE = @as(c_int, 64);
pub const __TIMESIZE = __WORDSIZE;
pub const __USE_MISC = @as(c_int, 1);
pub const __USE_ATFILE = @as(c_int, 1);
pub const __USE_FORTIFY_LEVEL = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_GETS = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_SCANF = @as(c_int, 0);
pub const _STDC_PREDEF_H = @as(c_int, 1);
pub const __STDC_IEC_559__ = @as(c_int, 1);
pub const __STDC_IEC_60559_BFP__ = @as(c_long, 201404);
pub const __STDC_IEC_559_COMPLEX__ = @as(c_int, 1);
pub const __STDC_IEC_60559_COMPLEX__ = @as(c_long, 201404);
pub const __STDC_ISO_10646__ = @as(c_long, 201706);
pub const __GNU_LIBRARY__ = @as(c_int, 6);
pub const __GLIBC__ = @as(c_int, 2);
pub inline fn __GLIBC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub const _SYS_CDEFS_H = @as(c_int, 1);
pub const __glibc_has_attribute = @compileError("unable to translate macro: undefined identifier `__has_attribute`");
// /usr/include/sys/cdefs.h:45:10
pub inline fn __glibc_has_builtin(name: anytype) @TypeOf(__has_builtin(name)) {
    _ = &name;
    return __has_builtin(name);
}
pub const __glibc_has_extension = @compileError("unable to translate macro: undefined identifier `__has_extension`");
// /usr/include/sys/cdefs.h:55:10
pub const __LEAF = "";
pub const __LEAF_ATTR = "";
pub const __THROW = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /usr/include/sys/cdefs.h:79:11
pub const __THROWNL = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /usr/include/sys/cdefs.h:80:11
pub const __NTH = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /usr/include/sys/cdefs.h:81:11
pub const __NTHNL = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /usr/include/sys/cdefs.h:82:11
pub inline fn __P(args: anytype) @TypeOf(args) {
    _ = &args;
    return args;
}
pub inline fn __PMT(args: anytype) @TypeOf(args) {
    _ = &args;
    return args;
}
pub const __CONCAT = @compileError("unable to translate C expr: unexpected token '##'");
// /usr/include/sys/cdefs.h:124:9
pub const __STRING = @compileError("unable to translate C expr: unexpected token '#'");
// /usr/include/sys/cdefs.h:125:9
pub const __ptr_t = ?*anyopaque;
pub const __BEGIN_DECLS = "";
pub const __END_DECLS = "";
pub inline fn __bos(ptr: anytype) @TypeOf(__builtin_object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1))) {
    _ = &ptr;
    return __builtin_object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1));
}
pub inline fn __bos0(ptr: anytype) @TypeOf(__builtin_object_size(ptr, @as(c_int, 0))) {
    _ = &ptr;
    return __builtin_object_size(ptr, @as(c_int, 0));
}
pub inline fn __glibc_objsize0(__o: anytype) @TypeOf(__bos0(__o)) {
    _ = &__o;
    return __bos0(__o);
}
pub inline fn __glibc_objsize(__o: anytype) @TypeOf(__bos(__o)) {
    _ = &__o;
    return __bos(__o);
}
pub inline fn __glibc_safe_len_cond(__l: anytype, __s: anytype, __osz: anytype) @TypeOf(__l <= @import("std").zig.c_translation.MacroArithmetic.div(__osz, __s)) {
    _ = &__l;
    _ = &__s;
    _ = &__osz;
    return __l <= @import("std").zig.c_translation.MacroArithmetic.div(__osz, __s);
}
pub const __glibc_unsigned_or_positive = @compileError("unable to translate C expr: unexpected token '__typeof'");
// /usr/include/sys/cdefs.h:160:9
pub inline fn __glibc_safe_or_unknown_len(__l: anytype, __s: anytype, __osz: anytype) @TypeOf(((__glibc_unsigned_or_positive(__l) != 0) and (__builtin_constant_p(__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz)) != 0)) and (__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz) != 0)) {
    _ = &__l;
    _ = &__s;
    _ = &__osz;
    return ((__glibc_unsigned_or_positive(__l) != 0) and (__builtin_constant_p(__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz)) != 0)) and (__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz) != 0);
}
pub inline fn __glibc_unsafe_len(__l: anytype, __s: anytype, __osz: anytype) @TypeOf(((__glibc_unsigned_or_positive(__l) != 0) and (__builtin_constant_p(__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz)) != 0)) and !(__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz) != 0)) {
    _ = &__l;
    _ = &__s;
    _ = &__osz;
    return ((__glibc_unsigned_or_positive(__l) != 0) and (__builtin_constant_p(__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz)) != 0)) and !(__glibc_safe_len_cond(__SIZE_TYPE__(__l), __s, __osz) != 0);
}
pub const __glibc_fortify = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /usr/include/sys/cdefs.h:185:9
pub const __glibc_fortify_n = @compileError("unable to translate C expr: expected ')' instead got '...'");
// /usr/include/sys/cdefs.h:195:9
pub const __warnattr = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:207:10
pub const __errordecl = @compileError("unable to translate C expr: unexpected token 'extern'");
// /usr/include/sys/cdefs.h:208:10
pub const __flexarr = @compileError("unable to translate C expr: unexpected token '['");
// /usr/include/sys/cdefs.h:216:10
pub const __glibc_c99_flexarr_available = @as(c_int, 1);
pub const __REDIRECT = @compileError("unable to translate C expr: unexpected token '__asm__'");
// /usr/include/sys/cdefs.h:247:10
pub const __REDIRECT_NTH = @compileError("unable to translate C expr: unexpected token '__asm__'");
// /usr/include/sys/cdefs.h:254:11
pub const __REDIRECT_NTHNL = @compileError("unable to translate C expr: unexpected token '__asm__'");
// /usr/include/sys/cdefs.h:256:11
pub const __ASMNAME = @compileError("unable to translate C expr: unexpected token ','");
// /usr/include/sys/cdefs.h:259:10
pub inline fn __ASMNAME2(prefix: anytype, cname: anytype) @TypeOf(__STRING(prefix) ++ cname) {
    _ = &prefix;
    _ = &cname;
    return __STRING(prefix) ++ cname;
}
pub const __attribute_malloc__ = @compileError("unable to translate macro: undefined identifier `__malloc__`");
// /usr/include/sys/cdefs.h:281:10
pub const __attribute_alloc_size__ = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:292:10
pub const __attribute_alloc_align__ = @compileError("unable to translate macro: undefined identifier `__alloc_align__`");
// /usr/include/sys/cdefs.h:298:10
pub const __attribute_pure__ = @compileError("unable to translate macro: undefined identifier `__pure__`");
// /usr/include/sys/cdefs.h:308:10
pub const __attribute_const__ = @compileError("unable to translate C expr: unexpected token '__attribute__'");
// /usr/include/sys/cdefs.h:315:10
pub const __attribute_maybe_unused__ = @compileError("unable to translate macro: undefined identifier `__unused__`");
// /usr/include/sys/cdefs.h:321:10
pub const __attribute_used__ = @compileError("unable to translate macro: undefined identifier `__used__`");
// /usr/include/sys/cdefs.h:330:10
pub const __attribute_noinline__ = @compileError("unable to translate macro: undefined identifier `__noinline__`");
// /usr/include/sys/cdefs.h:331:10
pub const __attribute_deprecated__ = @compileError("unable to translate macro: undefined identifier `__deprecated__`");
// /usr/include/sys/cdefs.h:339:10
pub const __attribute_deprecated_msg__ = @compileError("unable to translate macro: undefined identifier `__deprecated__`");
// /usr/include/sys/cdefs.h:349:10
pub const __attribute_format_arg__ = @compileError("unable to translate macro: undefined identifier `__format_arg__`");
// /usr/include/sys/cdefs.h:362:10
pub const __attribute_format_strfmon__ = @compileError("unable to translate macro: undefined identifier `__format__`");
// /usr/include/sys/cdefs.h:372:10
pub const __attribute_nonnull__ = @compileError("unable to translate macro: undefined identifier `__nonnull__`");
// /usr/include/sys/cdefs.h:384:11
pub inline fn __nonnull(params: anytype) @TypeOf(__attribute_nonnull__(params)) {
    _ = &params;
    return __attribute_nonnull__(params);
}
pub const __returns_nonnull = @compileError("unable to translate macro: undefined identifier `__returns_nonnull__`");
// /usr/include/sys/cdefs.h:397:10
pub const __attribute_warn_unused_result__ = @compileError("unable to translate macro: undefined identifier `__warn_unused_result__`");
// /usr/include/sys/cdefs.h:406:10
pub const __wur = "";
pub const __always_inline = @compileError("unable to translate macro: undefined identifier `__always_inline__`");
// /usr/include/sys/cdefs.h:424:10
pub const __attribute_artificial__ = @compileError("unable to translate macro: undefined identifier `__artificial__`");
// /usr/include/sys/cdefs.h:433:10
pub const __extern_inline = @compileError("unable to translate macro: undefined identifier `__gnu_inline__`");
// /usr/include/sys/cdefs.h:451:11
pub const __extern_always_inline = @compileError("unable to translate macro: undefined identifier `__gnu_inline__`");
// /usr/include/sys/cdefs.h:452:11
pub const __fortify_function = __extern_always_inline ++ __attribute_artificial__;
pub const __restrict_arr = @compileError("unable to translate C expr: unexpected token '__restrict'");
// /usr/include/sys/cdefs.h:495:10
pub inline fn __glibc_unlikely(cond: anytype) @TypeOf(__builtin_expect(cond, @as(c_int, 0))) {
    _ = &cond;
    return __builtin_expect(cond, @as(c_int, 0));
}
pub inline fn __glibc_likely(cond: anytype) @TypeOf(__builtin_expect(cond, @as(c_int, 1))) {
    _ = &cond;
    return __builtin_expect(cond, @as(c_int, 1));
}
pub const __attribute_nonstring__ = "";
pub const __attribute_copy__ = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:544:10
pub const __LDOUBLE_REDIRECTS_TO_FLOAT128_ABI = @as(c_int, 0);
pub inline fn __LDBL_REDIR1(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return name ++ proto;
}
pub inline fn __LDBL_REDIR(name: anytype, proto: anytype) @TypeOf(name ++ proto) {
    _ = &name;
    _ = &proto;
    return name ++ proto;
}
pub inline fn __LDBL_REDIR1_NTH(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto ++ __THROW) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return name ++ proto ++ __THROW;
}
pub inline fn __LDBL_REDIR_NTH(name: anytype, proto: anytype) @TypeOf(name ++ proto ++ __THROW) {
    _ = &name;
    _ = &proto;
    return name ++ proto ++ __THROW;
}
pub const __LDBL_REDIR2_DECL = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:620:10
pub const __LDBL_REDIR_DECL = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:621:10
pub inline fn __REDIRECT_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT(name, proto, alias)) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return __REDIRECT(name, proto, alias);
}
pub inline fn __REDIRECT_NTH_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT_NTH(name, proto, alias)) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return __REDIRECT_NTH(name, proto, alias);
}
pub const __glibc_macro_warning1 = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /usr/include/sys/cdefs.h:635:10
pub const __glibc_macro_warning = @compileError("unable to translate macro: undefined identifier `GCC`");
// /usr/include/sys/cdefs.h:636:10
pub const __HAVE_GENERIC_SELECTION = @as(c_int, 1);
pub const __fortified_attr_access = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:681:11
pub const __attr_access = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:682:11
pub const __attr_access_none = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:683:11
pub const __attr_dealloc = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/sys/cdefs.h:693:10
pub const __attr_dealloc_free = "";
pub const __attribute_returns_twice__ = @compileError("unable to translate macro: undefined identifier `__returns_twice__`");
// /usr/include/sys/cdefs.h:700:10
pub const __stub___compat_bdflush = "";
pub const __stub_chflags = "";
pub const __stub_fchflags = "";
pub const __stub_gtty = "";
pub const __stub_revoke = "";
pub const __stub_setlogin = "";
pub const __stub_sigreturn = "";
pub const __stub_stty = "";
pub const __GLIBC_USE_LIB_EXT2 = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_BFP_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_BFP_EXT_C2X = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT_C2X = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_TYPES_EXT = @as(c_int, 0);
pub const MB_LEN_MAX = @as(c_int, 16);
pub const LLONG_MIN = -LLONG_MAX - @as(c_int, 1);
pub const LLONG_MAX = __LONG_LONG_MAX__;
pub const ULLONG_MAX = (LLONG_MAX * @as(c_ulonglong, 2)) + @as(c_int, 1);
pub const _BITS_POSIX1_LIM_H = @as(c_int, 1);
pub const _POSIX_AIO_LISTIO_MAX = @as(c_int, 2);
pub const _POSIX_AIO_MAX = @as(c_int, 1);
pub const _POSIX_ARG_MAX = @as(c_int, 4096);
pub const _POSIX_CHILD_MAX = @as(c_int, 25);
pub const _POSIX_DELAYTIMER_MAX = @as(c_int, 32);
pub const _POSIX_HOST_NAME_MAX = @as(c_int, 255);
pub const _POSIX_LINK_MAX = @as(c_int, 8);
pub const _POSIX_LOGIN_NAME_MAX = @as(c_int, 9);
pub const _POSIX_MAX_CANON = @as(c_int, 255);
pub const _POSIX_MAX_INPUT = @as(c_int, 255);
pub const _POSIX_MQ_OPEN_MAX = @as(c_int, 8);
pub const _POSIX_MQ_PRIO_MAX = @as(c_int, 32);
pub const _POSIX_NAME_MAX = @as(c_int, 14);
pub const _POSIX_NGROUPS_MAX = @as(c_int, 8);
pub const _POSIX_OPEN_MAX = @as(c_int, 20);
pub const _POSIX_PATH_MAX = @as(c_int, 256);
pub const _POSIX_PIPE_BUF = @as(c_int, 512);
pub const _POSIX_RE_DUP_MAX = @as(c_int, 255);
pub const _POSIX_RTSIG_MAX = @as(c_int, 8);
pub const _POSIX_SEM_NSEMS_MAX = @as(c_int, 256);
pub const _POSIX_SEM_VALUE_MAX = @as(c_int, 32767);
pub const _POSIX_SIGQUEUE_MAX = @as(c_int, 32);
pub const _POSIX_SSIZE_MAX = @as(c_int, 32767);
pub const _POSIX_STREAM_MAX = @as(c_int, 8);
pub const _POSIX_SYMLINK_MAX = @as(c_int, 255);
pub const _POSIX_SYMLOOP_MAX = @as(c_int, 8);
pub const _POSIX_TIMER_MAX = @as(c_int, 32);
pub const _POSIX_TTY_NAME_MAX = @as(c_int, 9);
pub const _POSIX_TZNAME_MAX = @as(c_int, 6);
pub const _POSIX_CLOCKRES_MIN = @import("std").zig.c_translation.promoteIntLiteral(c_int, 20000000, .decimal);
pub const __undef_NR_OPEN = "";
pub const __undef_LINK_MAX = "";
pub const __undef_OPEN_MAX = "";
pub const __undef_ARG_MAX = "";
pub const _LINUX_LIMITS_H = "";
pub const NR_OPEN = @as(c_int, 1024);
pub const NGROUPS_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65536, .decimal);
pub const ARG_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 131072, .decimal);
pub const LINK_MAX = @as(c_int, 127);
pub const MAX_CANON = @as(c_int, 255);
pub const MAX_INPUT = @as(c_int, 255);
pub const NAME_MAX = @as(c_int, 255);
pub const PATH_MAX = @as(c_int, 4096);
pub const PIPE_BUF = @as(c_int, 4096);
pub const XATTR_NAME_MAX = @as(c_int, 255);
pub const XATTR_SIZE_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65536, .decimal);
pub const XATTR_LIST_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65536, .decimal);
pub const RTSIG_MAX = @as(c_int, 32);
pub const _POSIX_THREAD_KEYS_MAX = @as(c_int, 128);
pub const PTHREAD_KEYS_MAX = @as(c_int, 1024);
pub const _POSIX_THREAD_DESTRUCTOR_ITERATIONS = @as(c_int, 4);
pub const PTHREAD_DESTRUCTOR_ITERATIONS = _POSIX_THREAD_DESTRUCTOR_ITERATIONS;
pub const _POSIX_THREAD_THREADS_MAX = @as(c_int, 64);
pub const AIO_PRIO_DELTA_MAX = @as(c_int, 20);
pub const PTHREAD_STACK_MIN = @as(c_int, 16384);
pub const DELAYTIMER_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const TTY_NAME_MAX = @as(c_int, 32);
pub const LOGIN_NAME_MAX = @as(c_int, 256);
pub const HOST_NAME_MAX = @as(c_int, 64);
pub const MQ_PRIO_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 32768, .decimal);
pub const SEM_VALUE_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const SSIZE_MAX = LONG_MAX;
pub const _BITS_POSIX2_LIM_H = @as(c_int, 1);
pub const _POSIX2_BC_BASE_MAX = @as(c_int, 99);
pub const _POSIX2_BC_DIM_MAX = @as(c_int, 2048);
pub const _POSIX2_BC_SCALE_MAX = @as(c_int, 99);
pub const _POSIX2_BC_STRING_MAX = @as(c_int, 1000);
pub const _POSIX2_COLL_WEIGHTS_MAX = @as(c_int, 2);
pub const _POSIX2_EXPR_NEST_MAX = @as(c_int, 32);
pub const _POSIX2_LINE_MAX = @as(c_int, 2048);
pub const _POSIX2_RE_DUP_MAX = @as(c_int, 255);
pub const _POSIX2_CHARCLASS_NAME_MAX = @as(c_int, 14);
pub const BC_BASE_MAX = _POSIX2_BC_BASE_MAX;
pub const BC_DIM_MAX = _POSIX2_BC_DIM_MAX;
pub const BC_SCALE_MAX = _POSIX2_BC_SCALE_MAX;
pub const BC_STRING_MAX = _POSIX2_BC_STRING_MAX;
pub const COLL_WEIGHTS_MAX = @as(c_int, 255);
pub const EXPR_NEST_MAX = _POSIX2_EXPR_NEST_MAX;
pub const LINE_MAX = _POSIX2_LINE_MAX;
pub const CHARCLASS_NAME_MAX = @as(c_int, 2048);
pub const RE_DUP_MAX = @as(c_int, 0x7fff);
pub const SCHAR_MAX = __SCHAR_MAX__;
pub const SHRT_MAX = __SHRT_MAX__;
pub const INT_MAX = __INT_MAX__;
pub const LONG_MAX = __LONG_MAX__;
pub const SCHAR_MIN = -__SCHAR_MAX__ - @as(c_int, 1);
pub const SHRT_MIN = -__SHRT_MAX__ - @as(c_int, 1);
pub const INT_MIN = -__INT_MAX__ - @as(c_int, 1);
pub const LONG_MIN = -__LONG_MAX__ - @as(c_long, 1);
pub const UCHAR_MAX = (__SCHAR_MAX__ * @as(c_int, 2)) + @as(c_int, 1);
pub const USHRT_MAX = (__SHRT_MAX__ * @as(c_int, 2)) + @as(c_int, 1);
pub const UINT_MAX = (__INT_MAX__ * @as(c_uint, 2)) + @as(c_uint, 1);
pub const ULONG_MAX = (__LONG_MAX__ * @as(c_ulong, 2)) + @as(c_ulong, 1);
pub const CHAR_BIT = __CHAR_BIT__;
pub const CHAR_MIN = SCHAR_MIN;
pub const CHAR_MAX = __SCHAR_MAX__;
pub const _SETJMP_H = @as(c_int, 1);
pub const _BITS_SETJMP_H = @as(c_int, 1);
pub const __jmp_buf_tag_defined = @as(c_int, 1);
pub const ____sigset_t_defined = "";
pub const _SIGSET_NWORDS = @import("std").zig.c_translation.MacroArithmetic.div(@as(c_int, 1024), @as(c_int, 8) * @import("std").zig.c_translation.sizeof(c_ulong));
pub inline fn sigsetjmp(env: anytype, savemask: anytype) @TypeOf(__sigsetjmp(env, savemask)) {
    _ = &env;
    _ = &savemask;
    return __sigsetjmp(env, savemask);
}
pub const __CLANG_STDINT_H = "";
pub const _STDINT_H = @as(c_int, 1);
pub const _BITS_TYPES_H = @as(c_int, 1);
pub const __S16_TYPE = c_short;
pub const __U16_TYPE = c_ushort;
pub const __S32_TYPE = c_int;
pub const __U32_TYPE = c_uint;
pub const __SLONGWORD_TYPE = c_long;
pub const __ULONGWORD_TYPE = c_ulong;
pub const __SQUAD_TYPE = c_long;
pub const __UQUAD_TYPE = c_ulong;
pub const __SWORD_TYPE = c_long;
pub const __UWORD_TYPE = c_ulong;
pub const __SLONG32_TYPE = c_int;
pub const __ULONG32_TYPE = c_uint;
pub const __S64_TYPE = c_long;
pub const __U64_TYPE = c_ulong;
pub const __STD_TYPE = @compileError("unable to translate C expr: unexpected token 'typedef'");
// /usr/include/bits/types.h:137:10
pub const _BITS_TYPESIZES_H = @as(c_int, 1);
pub const __SYSCALL_SLONG_TYPE = __SLONGWORD_TYPE;
pub const __SYSCALL_ULONG_TYPE = __ULONGWORD_TYPE;
pub const __DEV_T_TYPE = __UQUAD_TYPE;
pub const __UID_T_TYPE = __U32_TYPE;
pub const __GID_T_TYPE = __U32_TYPE;
pub const __INO_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __INO64_T_TYPE = __UQUAD_TYPE;
pub const __MODE_T_TYPE = __U32_TYPE;
pub const __NLINK_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSWORD_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF64_T_TYPE = __SQUAD_TYPE;
pub const __PID_T_TYPE = __S32_TYPE;
pub const __RLIM_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __RLIM64_T_TYPE = __UQUAD_TYPE;
pub const __BLKCNT_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __BLKCNT64_T_TYPE = __SQUAD_TYPE;
pub const __FSBLKCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSBLKCNT64_T_TYPE = __UQUAD_TYPE;
pub const __FSFILCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSFILCNT64_T_TYPE = __UQUAD_TYPE;
pub const __ID_T_TYPE = __U32_TYPE;
pub const __CLOCK_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __TIME_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __USECONDS_T_TYPE = __U32_TYPE;
pub const __SUSECONDS_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __SUSECONDS64_T_TYPE = __SQUAD_TYPE;
pub const __DADDR_T_TYPE = __S32_TYPE;
pub const __KEY_T_TYPE = __S32_TYPE;
pub const __CLOCKID_T_TYPE = __S32_TYPE;
pub const __TIMER_T_TYPE = ?*anyopaque;
pub const __BLKSIZE_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __FSID_T_TYPE = @compileError("unable to translate macro: undefined identifier `__val`");
// /usr/include/bits/typesizes.h:73:9
pub const __SSIZE_T_TYPE = __SWORD_TYPE;
pub const __CPU_MASK_TYPE = __SYSCALL_ULONG_TYPE;
pub const __OFF_T_MATCHES_OFF64_T = @as(c_int, 1);
pub const __INO_T_MATCHES_INO64_T = @as(c_int, 1);
pub const __RLIM_T_MATCHES_RLIM64_T = @as(c_int, 1);
pub const __STATFS_MATCHES_STATFS64 = @as(c_int, 1);
pub const __KERNEL_OLD_TIMEVAL_MATCHES_TIMEVAL64 = @as(c_int, 1);
pub const __FD_SETSIZE = @as(c_int, 1024);
pub const _BITS_TIME64_H = @as(c_int, 1);
pub const __TIME64_T_TYPE = __TIME_T_TYPE;
pub const _BITS_WCHAR_H = @as(c_int, 1);
pub const __WCHAR_MAX = __WCHAR_MAX__;
pub const __WCHAR_MIN = -__WCHAR_MAX - @as(c_int, 1);
pub const _BITS_STDINT_INTN_H = @as(c_int, 1);
pub const _BITS_STDINT_UINTN_H = @as(c_int, 1);
pub const __intptr_t_defined = "";
pub const INT8_MIN = -@as(c_int, 128);
pub const INT16_MIN = -@as(c_int, 32767) - @as(c_int, 1);
pub const INT32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT64_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT8_MAX = @as(c_int, 127);
pub const INT16_MAX = @as(c_int, 32767);
pub const INT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT64_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT8_MAX = @as(c_int, 255);
pub const UINT16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT64_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INT_LEAST8_MIN = -@as(c_int, 128);
pub const INT_LEAST16_MIN = -@as(c_int, 32767) - @as(c_int, 1);
pub const INT_LEAST32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT_LEAST64_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT_LEAST8_MAX = @as(c_int, 127);
pub const INT_LEAST16_MAX = @as(c_int, 32767);
pub const INT_LEAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT_LEAST64_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT_LEAST8_MAX = @as(c_int, 255);
pub const UINT_LEAST16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT_LEAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT_LEAST64_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INT_FAST8_MIN = -@as(c_int, 128);
pub const INT_FAST16_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INT_FAST32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INT_FAST64_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT_FAST8_MAX = @as(c_int, 127);
pub const INT_FAST16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const INT_FAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const INT_FAST64_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT_FAST8_MAX = @as(c_int, 255);
pub const UINT_FAST16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_FAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_FAST64_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INTPTR_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INTPTR_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const UINTPTR_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const INTMAX_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INTMAX_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINTMAX_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const PTRDIFF_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const PTRDIFF_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const SIG_ATOMIC_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const SIG_ATOMIC_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const SIZE_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const WCHAR_MIN = __WCHAR_MIN;
pub const WCHAR_MAX = __WCHAR_MAX;
pub const WINT_MIN = @as(c_uint, 0);
pub const WINT_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub inline fn INT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn INT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn INT32_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const INT64_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub inline fn UINT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn UINT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const UINT32_C = @import("std").zig.c_translation.Macros.U_SUFFIX;
pub const UINT64_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const INTMAX_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const UINTMAX_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const __need_size_t = "";
pub const __need_wchar_t = "";
pub const __need_NULL = "";
pub const _SIZE_T = "";
pub const _WCHAR_T = "";
pub const NULL = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
pub const _STDLIB_H = @as(c_int, 1);
pub const WNOHANG = @as(c_int, 1);
pub const WUNTRACED = @as(c_int, 2);
pub const WSTOPPED = @as(c_int, 2);
pub const WEXITED = @as(c_int, 4);
pub const WCONTINUED = @as(c_int, 8);
pub const WNOWAIT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x01000000, .hex);
pub const __WNOTHREAD = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x20000000, .hex);
pub const __WALL = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x40000000, .hex);
pub const __WCLONE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80000000, .hex);
pub inline fn __WEXITSTATUS(status: anytype) @TypeOf((status & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff00, .hex)) >> @as(c_int, 8)) {
    _ = &status;
    return (status & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff00, .hex)) >> @as(c_int, 8);
}
pub inline fn __WTERMSIG(status: anytype) @TypeOf(status & @as(c_int, 0x7f)) {
    _ = &status;
    return status & @as(c_int, 0x7f);
}
pub inline fn __WSTOPSIG(status: anytype) @TypeOf(__WEXITSTATUS(status)) {
    _ = &status;
    return __WEXITSTATUS(status);
}
pub inline fn __WIFEXITED(status: anytype) @TypeOf(__WTERMSIG(status) == @as(c_int, 0)) {
    _ = &status;
    return __WTERMSIG(status) == @as(c_int, 0);
}
pub inline fn __WIFSIGNALED(status: anytype) @TypeOf((@import("std").zig.c_translation.cast(i8, (status & @as(c_int, 0x7f)) + @as(c_int, 1)) >> @as(c_int, 1)) > @as(c_int, 0)) {
    _ = &status;
    return (@import("std").zig.c_translation.cast(i8, (status & @as(c_int, 0x7f)) + @as(c_int, 1)) >> @as(c_int, 1)) > @as(c_int, 0);
}
pub inline fn __WIFSTOPPED(status: anytype) @TypeOf((status & @as(c_int, 0xff)) == @as(c_int, 0x7f)) {
    _ = &status;
    return (status & @as(c_int, 0xff)) == @as(c_int, 0x7f);
}
pub inline fn __WIFCONTINUED(status: anytype) @TypeOf(status == __W_CONTINUED) {
    _ = &status;
    return status == __W_CONTINUED;
}
pub inline fn __WCOREDUMP(status: anytype) @TypeOf(status & __WCOREFLAG) {
    _ = &status;
    return status & __WCOREFLAG;
}
pub inline fn __W_EXITCODE(ret: anytype, sig: anytype) @TypeOf((ret << @as(c_int, 8)) | sig) {
    _ = &ret;
    _ = &sig;
    return (ret << @as(c_int, 8)) | sig;
}
pub inline fn __W_STOPCODE(sig: anytype) @TypeOf((sig << @as(c_int, 8)) | @as(c_int, 0x7f)) {
    _ = &sig;
    return (sig << @as(c_int, 8)) | @as(c_int, 0x7f);
}
pub const __W_CONTINUED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffff, .hex);
pub const __WCOREFLAG = @as(c_int, 0x80);
pub inline fn WEXITSTATUS(status: anytype) @TypeOf(__WEXITSTATUS(status)) {
    _ = &status;
    return __WEXITSTATUS(status);
}
pub inline fn WTERMSIG(status: anytype) @TypeOf(__WTERMSIG(status)) {
    _ = &status;
    return __WTERMSIG(status);
}
pub inline fn WSTOPSIG(status: anytype) @TypeOf(__WSTOPSIG(status)) {
    _ = &status;
    return __WSTOPSIG(status);
}
pub inline fn WIFEXITED(status: anytype) @TypeOf(__WIFEXITED(status)) {
    _ = &status;
    return __WIFEXITED(status);
}
pub inline fn WIFSIGNALED(status: anytype) @TypeOf(__WIFSIGNALED(status)) {
    _ = &status;
    return __WIFSIGNALED(status);
}
pub inline fn WIFSTOPPED(status: anytype) @TypeOf(__WIFSTOPPED(status)) {
    _ = &status;
    return __WIFSTOPPED(status);
}
pub inline fn WIFCONTINUED(status: anytype) @TypeOf(__WIFCONTINUED(status)) {
    _ = &status;
    return __WIFCONTINUED(status);
}
pub const _BITS_FLOATN_H = "";
pub const __HAVE_FLOAT128 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT128 = @as(c_int, 0);
pub const __HAVE_FLOAT64X = @as(c_int, 1);
pub const __HAVE_FLOAT64X_LONG_DOUBLE = @as(c_int, 1);
pub const _BITS_FLOATN_COMMON_H = "";
pub const __HAVE_FLOAT16 = @as(c_int, 0);
pub const __HAVE_FLOAT32 = @as(c_int, 1);
pub const __HAVE_FLOAT64 = @as(c_int, 1);
pub const __HAVE_FLOAT32X = @as(c_int, 1);
pub const __HAVE_FLOAT128X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT16 = __HAVE_FLOAT16;
pub const __HAVE_DISTINCT_FLOAT32 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT64 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT32X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT64X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT128X = __HAVE_FLOAT128X;
pub const __HAVE_FLOAT128_UNLIKE_LDBL = (__HAVE_DISTINCT_FLOAT128 != 0) and (__LDBL_MANT_DIG__ != @as(c_int, 113));
pub const __HAVE_FLOATN_NOT_TYPEDEF = @as(c_int, 0);
pub const __f32 = @import("std").zig.c_translation.Macros.F_SUFFIX;
pub inline fn __f64(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub inline fn __f32x(x: anytype) @TypeOf(x) {
    _ = &x;
    return x;
}
pub const __f64x = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const __CFLOAT32 = @compileError("unable to translate: TODO _Complex");
// /usr/include/bits/floatn-common.h:149:12
pub const __CFLOAT64 = @compileError("unable to translate: TODO _Complex");
// /usr/include/bits/floatn-common.h:160:13
pub const __CFLOAT32X = @compileError("unable to translate: TODO _Complex");
// /usr/include/bits/floatn-common.h:169:12
pub const __CFLOAT64X = @compileError("unable to translate: TODO _Complex");
// /usr/include/bits/floatn-common.h:178:13
pub inline fn __builtin_huge_valf32() @TypeOf(__builtin_huge_valf()) {
    return __builtin_huge_valf();
}
pub inline fn __builtin_inff32() @TypeOf(__builtin_inff()) {
    return __builtin_inff();
}
pub inline fn __builtin_nanf32(x: anytype) @TypeOf(__builtin_nanf(x)) {
    _ = &x;
    return __builtin_nanf(x);
}
pub const __builtin_nansf32 = @compileError("unable to translate macro: undefined identifier `__builtin_nansf`");
// /usr/include/bits/floatn-common.h:221:12
pub const __builtin_huge_valf64 = @compileError("unable to translate macro: undefined identifier `__builtin_huge_val`");
// /usr/include/bits/floatn-common.h:255:13
pub const __builtin_inff64 = @compileError("unable to translate macro: undefined identifier `__builtin_inf`");
// /usr/include/bits/floatn-common.h:256:13
pub const __builtin_nanf64 = @compileError("unable to translate macro: undefined identifier `__builtin_nan`");
// /usr/include/bits/floatn-common.h:257:13
pub const __builtin_nansf64 = @compileError("unable to translate macro: undefined identifier `__builtin_nans`");
// /usr/include/bits/floatn-common.h:258:13
pub const __builtin_huge_valf32x = @compileError("unable to translate macro: undefined identifier `__builtin_huge_val`");
// /usr/include/bits/floatn-common.h:272:12
pub const __builtin_inff32x = @compileError("unable to translate macro: undefined identifier `__builtin_inf`");
// /usr/include/bits/floatn-common.h:273:12
pub const __builtin_nanf32x = @compileError("unable to translate macro: undefined identifier `__builtin_nan`");
// /usr/include/bits/floatn-common.h:274:12
pub const __builtin_nansf32x = @compileError("unable to translate macro: undefined identifier `__builtin_nans`");
// /usr/include/bits/floatn-common.h:275:12
pub const __builtin_huge_valf64x = @compileError("unable to translate macro: undefined identifier `__builtin_huge_vall`");
// /usr/include/bits/floatn-common.h:289:13
pub const __builtin_inff64x = @compileError("unable to translate macro: undefined identifier `__builtin_infl`");
// /usr/include/bits/floatn-common.h:290:13
pub const __builtin_nanf64x = @compileError("unable to translate macro: undefined identifier `__builtin_nanl`");
// /usr/include/bits/floatn-common.h:291:13
pub const __builtin_nansf64x = @compileError("unable to translate macro: undefined identifier `__builtin_nansl`");
// /usr/include/bits/floatn-common.h:292:13
pub const __ldiv_t_defined = @as(c_int, 1);
pub const __lldiv_t_defined = @as(c_int, 1);
pub const RAND_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const EXIT_FAILURE = @as(c_int, 1);
pub const EXIT_SUCCESS = @as(c_int, 0);
pub const MB_CUR_MAX = __ctype_get_mb_cur_max();
pub const _SYS_TYPES_H = @as(c_int, 1);
pub const __u_char_defined = "";
pub const __ino_t_defined = "";
pub const __dev_t_defined = "";
pub const __gid_t_defined = "";
pub const __mode_t_defined = "";
pub const __nlink_t_defined = "";
pub const __uid_t_defined = "";
pub const __off_t_defined = "";
pub const __pid_t_defined = "";
pub const __id_t_defined = "";
pub const __ssize_t_defined = "";
pub const __daddr_t_defined = "";
pub const __key_t_defined = "";
pub const __clock_t_defined = @as(c_int, 1);
pub const __clockid_t_defined = @as(c_int, 1);
pub const __time_t_defined = @as(c_int, 1);
pub const __timer_t_defined = @as(c_int, 1);
pub const __BIT_TYPES_DEFINED__ = @as(c_int, 1);
pub const _ENDIAN_H = @as(c_int, 1);
pub const _BITS_ENDIAN_H = @as(c_int, 1);
pub const __LITTLE_ENDIAN = @as(c_int, 1234);
pub const __BIG_ENDIAN = @as(c_int, 4321);
pub const __PDP_ENDIAN = @as(c_int, 3412);
pub const _BITS_ENDIANNESS_H = @as(c_int, 1);
pub const __BYTE_ORDER = __LITTLE_ENDIAN;
pub const __FLOAT_WORD_ORDER = __BYTE_ORDER;
pub inline fn __LONG_LONG_PAIR(HI: anytype, LO: anytype) @TypeOf(HI) {
    _ = &HI;
    _ = &LO;
    return blk: {
        _ = &LO;
        break :blk HI;
    };
}
pub const LITTLE_ENDIAN = __LITTLE_ENDIAN;
pub const BIG_ENDIAN = __BIG_ENDIAN;
pub const PDP_ENDIAN = __PDP_ENDIAN;
pub const BYTE_ORDER = __BYTE_ORDER;
pub const _BITS_BYTESWAP_H = @as(c_int, 1);
pub inline fn __bswap_constant_16(x: anytype) __uint16_t {
    _ = &x;
    return @import("std").zig.c_translation.cast(__uint16_t, ((x >> @as(c_int, 8)) & @as(c_int, 0xff)) | ((x & @as(c_int, 0xff)) << @as(c_int, 8)));
}
pub inline fn __bswap_constant_32(x: anytype) @TypeOf(((((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xff000000, .hex)) >> @as(c_int, 24)) | ((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x00ff0000, .hex)) >> @as(c_int, 8))) | ((x & @as(c_uint, 0x0000ff00)) << @as(c_int, 8))) | ((x & @as(c_uint, 0x000000ff)) << @as(c_int, 24))) {
    _ = &x;
    return ((((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xff000000, .hex)) >> @as(c_int, 24)) | ((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x00ff0000, .hex)) >> @as(c_int, 8))) | ((x & @as(c_uint, 0x0000ff00)) << @as(c_int, 8))) | ((x & @as(c_uint, 0x000000ff)) << @as(c_int, 24));
}
pub inline fn __bswap_constant_64(x: anytype) @TypeOf(((((((((x & @as(c_ulonglong, 0xff00000000000000)) >> @as(c_int, 56)) | ((x & @as(c_ulonglong, 0x00ff000000000000)) >> @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x0000ff0000000000)) >> @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000ff00000000)) >> @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x00000000ff000000)) << @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x0000000000ff0000)) << @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000000000ff00)) << @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x00000000000000ff)) << @as(c_int, 56))) {
    _ = &x;
    return ((((((((x & @as(c_ulonglong, 0xff00000000000000)) >> @as(c_int, 56)) | ((x & @as(c_ulonglong, 0x00ff000000000000)) >> @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x0000ff0000000000)) >> @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000ff00000000)) >> @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x00000000ff000000)) << @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x0000000000ff0000)) << @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000000000ff00)) << @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x00000000000000ff)) << @as(c_int, 56));
}
pub const _BITS_UINTN_IDENTITY_H = @as(c_int, 1);
pub inline fn htobe16(x: anytype) @TypeOf(__bswap_16(x)) {
    _ = &x;
    return __bswap_16(x);
}
pub inline fn htole16(x: anytype) @TypeOf(__uint16_identity(x)) {
    _ = &x;
    return __uint16_identity(x);
}
pub inline fn be16toh(x: anytype) @TypeOf(__bswap_16(x)) {
    _ = &x;
    return __bswap_16(x);
}
pub inline fn le16toh(x: anytype) @TypeOf(__uint16_identity(x)) {
    _ = &x;
    return __uint16_identity(x);
}
pub inline fn htobe32(x: anytype) @TypeOf(__bswap_32(x)) {
    _ = &x;
    return __bswap_32(x);
}
pub inline fn htole32(x: anytype) @TypeOf(__uint32_identity(x)) {
    _ = &x;
    return __uint32_identity(x);
}
pub inline fn be32toh(x: anytype) @TypeOf(__bswap_32(x)) {
    _ = &x;
    return __bswap_32(x);
}
pub inline fn le32toh(x: anytype) @TypeOf(__uint32_identity(x)) {
    _ = &x;
    return __uint32_identity(x);
}
pub inline fn htobe64(x: anytype) @TypeOf(__bswap_64(x)) {
    _ = &x;
    return __bswap_64(x);
}
pub inline fn htole64(x: anytype) @TypeOf(__uint64_identity(x)) {
    _ = &x;
    return __uint64_identity(x);
}
pub inline fn be64toh(x: anytype) @TypeOf(__bswap_64(x)) {
    _ = &x;
    return __bswap_64(x);
}
pub inline fn le64toh(x: anytype) @TypeOf(__uint64_identity(x)) {
    _ = &x;
    return __uint64_identity(x);
}
pub const _SYS_SELECT_H = @as(c_int, 1);
pub const __FD_ZERO = @compileError("unable to translate macro: undefined identifier `__i`");
// /usr/include/bits/select.h:25:9
pub const __FD_SET = @compileError("unable to translate C expr: expected ')' instead got '|='");
// /usr/include/bits/select.h:32:9
pub const __FD_CLR = @compileError("unable to translate C expr: expected ')' instead got '&='");
// /usr/include/bits/select.h:34:9
pub inline fn __FD_ISSET(d: anytype, s: anytype) @TypeOf((__FDS_BITS(s)[@as(usize, @intCast(__FD_ELT(d)))] & __FD_MASK(d)) != @as(c_int, 0)) {
    _ = &d;
    _ = &s;
    return (__FDS_BITS(s)[@as(usize, @intCast(__FD_ELT(d)))] & __FD_MASK(d)) != @as(c_int, 0);
}
pub const __sigset_t_defined = @as(c_int, 1);
pub const __timeval_defined = @as(c_int, 1);
pub const _STRUCT_TIMESPEC = @as(c_int, 1);
pub const __suseconds_t_defined = "";
pub const __NFDBITS = @as(c_int, 8) * @import("std").zig.c_translation.cast(c_int, @import("std").zig.c_translation.sizeof(__fd_mask));
pub inline fn __FD_ELT(d: anytype) @TypeOf(@import("std").zig.c_translation.MacroArithmetic.div(d, __NFDBITS)) {
    _ = &d;
    return @import("std").zig.c_translation.MacroArithmetic.div(d, __NFDBITS);
}
pub inline fn __FD_MASK(d: anytype) __fd_mask {
    _ = &d;
    return @import("std").zig.c_translation.cast(__fd_mask, @as(c_ulong, 1) << @import("std").zig.c_translation.MacroArithmetic.rem(d, __NFDBITS));
}
pub inline fn __FDS_BITS(set: anytype) @TypeOf(set.*.__fds_bits) {
    _ = &set;
    return set.*.__fds_bits;
}
pub const FD_SETSIZE = __FD_SETSIZE;
pub const NFDBITS = __NFDBITS;
pub inline fn FD_SET(fd: anytype, fdsetp: anytype) @TypeOf(__FD_SET(fd, fdsetp)) {
    _ = &fd;
    _ = &fdsetp;
    return __FD_SET(fd, fdsetp);
}
pub inline fn FD_CLR(fd: anytype, fdsetp: anytype) @TypeOf(__FD_CLR(fd, fdsetp)) {
    _ = &fd;
    _ = &fdsetp;
    return __FD_CLR(fd, fdsetp);
}
pub inline fn FD_ISSET(fd: anytype, fdsetp: anytype) @TypeOf(__FD_ISSET(fd, fdsetp)) {
    _ = &fd;
    _ = &fdsetp;
    return __FD_ISSET(fd, fdsetp);
}
pub inline fn FD_ZERO(fdsetp: anytype) @TypeOf(__FD_ZERO(fdsetp)) {
    _ = &fdsetp;
    return __FD_ZERO(fdsetp);
}
pub const __blksize_t_defined = "";
pub const __blkcnt_t_defined = "";
pub const __fsblkcnt_t_defined = "";
pub const __fsfilcnt_t_defined = "";
pub const _BITS_PTHREADTYPES_COMMON_H = @as(c_int, 1);
pub const _THREAD_SHARED_TYPES_H = @as(c_int, 1);
pub const _BITS_PTHREADTYPES_ARCH_H = @as(c_int, 1);
pub const __SIZEOF_PTHREAD_MUTEX_T = @as(c_int, 40);
pub const __SIZEOF_PTHREAD_ATTR_T = @as(c_int, 56);
pub const __SIZEOF_PTHREAD_RWLOCK_T = @as(c_int, 56);
pub const __SIZEOF_PTHREAD_BARRIER_T = @as(c_int, 32);
pub const __SIZEOF_PTHREAD_MUTEXATTR_T = @as(c_int, 4);
pub const __SIZEOF_PTHREAD_COND_T = @as(c_int, 48);
pub const __SIZEOF_PTHREAD_CONDATTR_T = @as(c_int, 4);
pub const __SIZEOF_PTHREAD_RWLOCKATTR_T = @as(c_int, 8);
pub const __SIZEOF_PTHREAD_BARRIERATTR_T = @as(c_int, 4);
pub const __LOCK_ALIGNMENT = "";
pub const __ONCE_ALIGNMENT = "";
pub const _BITS_ATOMIC_WIDE_COUNTER_H = "";
pub const _THREAD_MUTEX_INTERNAL_H = @as(c_int, 1);
pub const __PTHREAD_MUTEX_HAVE_PREV = @as(c_int, 1);
pub const __PTHREAD_MUTEX_INITIALIZER = @compileError("unable to translate C expr: unexpected token '{'");
// /usr/include/bits/struct_mutex.h:56:10
pub const _RWLOCK_INTERNAL_H = "";
pub const __PTHREAD_RWLOCK_ELISION_EXTRA = @compileError("unable to translate C expr: unexpected token '{'");
// /usr/include/bits/struct_rwlock.h:40:11
pub inline fn __PTHREAD_RWLOCK_INITIALIZER(__flags: anytype) @TypeOf(__flags) {
    _ = &__flags;
    return blk: {
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = &__PTHREAD_RWLOCK_ELISION_EXTRA;
        _ = @as(c_int, 0);
        break :blk __flags;
    };
}
pub const __ONCE_FLAG_INIT = @compileError("unable to translate C expr: unexpected token '{'");
// /usr/include/bits/thread-shared-types.h:113:9
pub const __have_pthread_attr_t = @as(c_int, 1);
pub const _ALLOCA_H = @as(c_int, 1);
pub const __COMPAR_FN_T = "";
pub const _STDIO_H = @as(c_int, 1);
pub const __need___va_list = "";
pub const __GNUC_VA_LIST = "";
pub const _____fpos_t_defined = @as(c_int, 1);
pub const ____mbstate_t_defined = @as(c_int, 1);
pub const _____fpos64_t_defined = @as(c_int, 1);
pub const ____FILE_defined = @as(c_int, 1);
pub const __FILE_defined = @as(c_int, 1);
pub const __struct_FILE_defined = @as(c_int, 1);
pub const __getc_unlocked_body = @compileError("TODO postfix inc/dec expr");
// /usr/include/bits/types/struct_FILE.h:102:9
pub const __putc_unlocked_body = @compileError("TODO postfix inc/dec expr");
// /usr/include/bits/types/struct_FILE.h:106:9
pub const _IO_EOF_SEEN = @as(c_int, 0x0010);
pub inline fn __feof_unlocked_body(_fp: anytype) @TypeOf((_fp.*._flags & _IO_EOF_SEEN) != @as(c_int, 0)) {
    _ = &_fp;
    return (_fp.*._flags & _IO_EOF_SEEN) != @as(c_int, 0);
}
pub const _IO_ERR_SEEN = @as(c_int, 0x0020);
pub inline fn __ferror_unlocked_body(_fp: anytype) @TypeOf((_fp.*._flags & _IO_ERR_SEEN) != @as(c_int, 0)) {
    _ = &_fp;
    return (_fp.*._flags & _IO_ERR_SEEN) != @as(c_int, 0);
}
pub const _IO_USER_LOCK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8000, .hex);
pub const _VA_LIST_DEFINED = "";
pub const _IOFBF = @as(c_int, 0);
pub const _IOLBF = @as(c_int, 1);
pub const _IONBF = @as(c_int, 2);
pub const BUFSIZ = @as(c_int, 8192);
pub const EOF = -@as(c_int, 1);
pub const SEEK_SET = @as(c_int, 0);
pub const SEEK_CUR = @as(c_int, 1);
pub const SEEK_END = @as(c_int, 2);
pub const P_tmpdir = "/tmp";
pub const _BITS_STDIO_LIM_H = @as(c_int, 1);
pub const L_tmpnam = @as(c_int, 20);
pub const TMP_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 238328, .decimal);
pub const FILENAME_MAX = @as(c_int, 4096);
pub const L_ctermid = @as(c_int, 9);
pub const FOPEN_MAX = @as(c_int, 16);
pub const __attr_dealloc_fclose = __attr_dealloc(fclose, @as(c_int, 1));
pub const __STDBOOL_H = "";
pub const __bool_true_false_are_defined = @as(c_int, 1);
pub const @"bool" = bool;
pub const @"true" = @as(c_int, 1);
pub const @"false" = @as(c_int, 0);
pub const _MATH_H = @as(c_int, 1);
pub const _BITS_LIBM_SIMD_DECL_STUBS_H = @as(c_int, 1);
pub const __DECL_SIMD_cos = "";
pub const __DECL_SIMD_cosf = "";
pub const __DECL_SIMD_cosl = "";
pub const __DECL_SIMD_cosf16 = "";
pub const __DECL_SIMD_cosf32 = "";
pub const __DECL_SIMD_cosf64 = "";
pub const __DECL_SIMD_cosf128 = "";
pub const __DECL_SIMD_cosf32x = "";
pub const __DECL_SIMD_cosf64x = "";
pub const __DECL_SIMD_cosf128x = "";
pub const __DECL_SIMD_sin = "";
pub const __DECL_SIMD_sinf = "";
pub const __DECL_SIMD_sinl = "";
pub const __DECL_SIMD_sinf16 = "";
pub const __DECL_SIMD_sinf32 = "";
pub const __DECL_SIMD_sinf64 = "";
pub const __DECL_SIMD_sinf128 = "";
pub const __DECL_SIMD_sinf32x = "";
pub const __DECL_SIMD_sinf64x = "";
pub const __DECL_SIMD_sinf128x = "";
pub const __DECL_SIMD_sincos = "";
pub const __DECL_SIMD_sincosf = "";
pub const __DECL_SIMD_sincosl = "";
pub const __DECL_SIMD_sincosf16 = "";
pub const __DECL_SIMD_sincosf32 = "";
pub const __DECL_SIMD_sincosf64 = "";
pub const __DECL_SIMD_sincosf128 = "";
pub const __DECL_SIMD_sincosf32x = "";
pub const __DECL_SIMD_sincosf64x = "";
pub const __DECL_SIMD_sincosf128x = "";
pub const __DECL_SIMD_log = "";
pub const __DECL_SIMD_logf = "";
pub const __DECL_SIMD_logl = "";
pub const __DECL_SIMD_logf16 = "";
pub const __DECL_SIMD_logf32 = "";
pub const __DECL_SIMD_logf64 = "";
pub const __DECL_SIMD_logf128 = "";
pub const __DECL_SIMD_logf32x = "";
pub const __DECL_SIMD_logf64x = "";
pub const __DECL_SIMD_logf128x = "";
pub const __DECL_SIMD_exp = "";
pub const __DECL_SIMD_expf = "";
pub const __DECL_SIMD_expl = "";
pub const __DECL_SIMD_expf16 = "";
pub const __DECL_SIMD_expf32 = "";
pub const __DECL_SIMD_expf64 = "";
pub const __DECL_SIMD_expf128 = "";
pub const __DECL_SIMD_expf32x = "";
pub const __DECL_SIMD_expf64x = "";
pub const __DECL_SIMD_expf128x = "";
pub const __DECL_SIMD_pow = "";
pub const __DECL_SIMD_powf = "";
pub const __DECL_SIMD_powl = "";
pub const __DECL_SIMD_powf16 = "";
pub const __DECL_SIMD_powf32 = "";
pub const __DECL_SIMD_powf64 = "";
pub const __DECL_SIMD_powf128 = "";
pub const __DECL_SIMD_powf32x = "";
pub const __DECL_SIMD_powf64x = "";
pub const __DECL_SIMD_powf128x = "";
pub const __DECL_SIMD_acos = "";
pub const __DECL_SIMD_acosf = "";
pub const __DECL_SIMD_acosl = "";
pub const __DECL_SIMD_acosf16 = "";
pub const __DECL_SIMD_acosf32 = "";
pub const __DECL_SIMD_acosf64 = "";
pub const __DECL_SIMD_acosf128 = "";
pub const __DECL_SIMD_acosf32x = "";
pub const __DECL_SIMD_acosf64x = "";
pub const __DECL_SIMD_acosf128x = "";
pub const __DECL_SIMD_atan = "";
pub const __DECL_SIMD_atanf = "";
pub const __DECL_SIMD_atanl = "";
pub const __DECL_SIMD_atanf16 = "";
pub const __DECL_SIMD_atanf32 = "";
pub const __DECL_SIMD_atanf64 = "";
pub const __DECL_SIMD_atanf128 = "";
pub const __DECL_SIMD_atanf32x = "";
pub const __DECL_SIMD_atanf64x = "";
pub const __DECL_SIMD_atanf128x = "";
pub const __DECL_SIMD_asin = "";
pub const __DECL_SIMD_asinf = "";
pub const __DECL_SIMD_asinl = "";
pub const __DECL_SIMD_asinf16 = "";
pub const __DECL_SIMD_asinf32 = "";
pub const __DECL_SIMD_asinf64 = "";
pub const __DECL_SIMD_asinf128 = "";
pub const __DECL_SIMD_asinf32x = "";
pub const __DECL_SIMD_asinf64x = "";
pub const __DECL_SIMD_asinf128x = "";
pub const __DECL_SIMD_hypot = "";
pub const __DECL_SIMD_hypotf = "";
pub const __DECL_SIMD_hypotl = "";
pub const __DECL_SIMD_hypotf16 = "";
pub const __DECL_SIMD_hypotf32 = "";
pub const __DECL_SIMD_hypotf64 = "";
pub const __DECL_SIMD_hypotf128 = "";
pub const __DECL_SIMD_hypotf32x = "";
pub const __DECL_SIMD_hypotf64x = "";
pub const __DECL_SIMD_hypotf128x = "";
pub const __DECL_SIMD_exp2 = "";
pub const __DECL_SIMD_exp2f = "";
pub const __DECL_SIMD_exp2l = "";
pub const __DECL_SIMD_exp2f16 = "";
pub const __DECL_SIMD_exp2f32 = "";
pub const __DECL_SIMD_exp2f64 = "";
pub const __DECL_SIMD_exp2f128 = "";
pub const __DECL_SIMD_exp2f32x = "";
pub const __DECL_SIMD_exp2f64x = "";
pub const __DECL_SIMD_exp2f128x = "";
pub const __DECL_SIMD_exp10 = "";
pub const __DECL_SIMD_exp10f = "";
pub const __DECL_SIMD_exp10l = "";
pub const __DECL_SIMD_exp10f16 = "";
pub const __DECL_SIMD_exp10f32 = "";
pub const __DECL_SIMD_exp10f64 = "";
pub const __DECL_SIMD_exp10f128 = "";
pub const __DECL_SIMD_exp10f32x = "";
pub const __DECL_SIMD_exp10f64x = "";
pub const __DECL_SIMD_exp10f128x = "";
pub const __DECL_SIMD_cosh = "";
pub const __DECL_SIMD_coshf = "";
pub const __DECL_SIMD_coshl = "";
pub const __DECL_SIMD_coshf16 = "";
pub const __DECL_SIMD_coshf32 = "";
pub const __DECL_SIMD_coshf64 = "";
pub const __DECL_SIMD_coshf128 = "";
pub const __DECL_SIMD_coshf32x = "";
pub const __DECL_SIMD_coshf64x = "";
pub const __DECL_SIMD_coshf128x = "";
pub const __DECL_SIMD_expm1 = "";
pub const __DECL_SIMD_expm1f = "";
pub const __DECL_SIMD_expm1l = "";
pub const __DECL_SIMD_expm1f16 = "";
pub const __DECL_SIMD_expm1f32 = "";
pub const __DECL_SIMD_expm1f64 = "";
pub const __DECL_SIMD_expm1f128 = "";
pub const __DECL_SIMD_expm1f32x = "";
pub const __DECL_SIMD_expm1f64x = "";
pub const __DECL_SIMD_expm1f128x = "";
pub const __DECL_SIMD_sinh = "";
pub const __DECL_SIMD_sinhf = "";
pub const __DECL_SIMD_sinhl = "";
pub const __DECL_SIMD_sinhf16 = "";
pub const __DECL_SIMD_sinhf32 = "";
pub const __DECL_SIMD_sinhf64 = "";
pub const __DECL_SIMD_sinhf128 = "";
pub const __DECL_SIMD_sinhf32x = "";
pub const __DECL_SIMD_sinhf64x = "";
pub const __DECL_SIMD_sinhf128x = "";
pub const __DECL_SIMD_cbrt = "";
pub const __DECL_SIMD_cbrtf = "";
pub const __DECL_SIMD_cbrtl = "";
pub const __DECL_SIMD_cbrtf16 = "";
pub const __DECL_SIMD_cbrtf32 = "";
pub const __DECL_SIMD_cbrtf64 = "";
pub const __DECL_SIMD_cbrtf128 = "";
pub const __DECL_SIMD_cbrtf32x = "";
pub const __DECL_SIMD_cbrtf64x = "";
pub const __DECL_SIMD_cbrtf128x = "";
pub const __DECL_SIMD_atan2 = "";
pub const __DECL_SIMD_atan2f = "";
pub const __DECL_SIMD_atan2l = "";
pub const __DECL_SIMD_atan2f16 = "";
pub const __DECL_SIMD_atan2f32 = "";
pub const __DECL_SIMD_atan2f64 = "";
pub const __DECL_SIMD_atan2f128 = "";
pub const __DECL_SIMD_atan2f32x = "";
pub const __DECL_SIMD_atan2f64x = "";
pub const __DECL_SIMD_atan2f128x = "";
pub const __DECL_SIMD_log10 = "";
pub const __DECL_SIMD_log10f = "";
pub const __DECL_SIMD_log10l = "";
pub const __DECL_SIMD_log10f16 = "";
pub const __DECL_SIMD_log10f32 = "";
pub const __DECL_SIMD_log10f64 = "";
pub const __DECL_SIMD_log10f128 = "";
pub const __DECL_SIMD_log10f32x = "";
pub const __DECL_SIMD_log10f64x = "";
pub const __DECL_SIMD_log10f128x = "";
pub const __DECL_SIMD_log2 = "";
pub const __DECL_SIMD_log2f = "";
pub const __DECL_SIMD_log2l = "";
pub const __DECL_SIMD_log2f16 = "";
pub const __DECL_SIMD_log2f32 = "";
pub const __DECL_SIMD_log2f64 = "";
pub const __DECL_SIMD_log2f128 = "";
pub const __DECL_SIMD_log2f32x = "";
pub const __DECL_SIMD_log2f64x = "";
pub const __DECL_SIMD_log2f128x = "";
pub const __DECL_SIMD_log1p = "";
pub const __DECL_SIMD_log1pf = "";
pub const __DECL_SIMD_log1pl = "";
pub const __DECL_SIMD_log1pf16 = "";
pub const __DECL_SIMD_log1pf32 = "";
pub const __DECL_SIMD_log1pf64 = "";
pub const __DECL_SIMD_log1pf128 = "";
pub const __DECL_SIMD_log1pf32x = "";
pub const __DECL_SIMD_log1pf64x = "";
pub const __DECL_SIMD_log1pf128x = "";
pub const __DECL_SIMD_atanh = "";
pub const __DECL_SIMD_atanhf = "";
pub const __DECL_SIMD_atanhl = "";
pub const __DECL_SIMD_atanhf16 = "";
pub const __DECL_SIMD_atanhf32 = "";
pub const __DECL_SIMD_atanhf64 = "";
pub const __DECL_SIMD_atanhf128 = "";
pub const __DECL_SIMD_atanhf32x = "";
pub const __DECL_SIMD_atanhf64x = "";
pub const __DECL_SIMD_atanhf128x = "";
pub const __DECL_SIMD_acosh = "";
pub const __DECL_SIMD_acoshf = "";
pub const __DECL_SIMD_acoshl = "";
pub const __DECL_SIMD_acoshf16 = "";
pub const __DECL_SIMD_acoshf32 = "";
pub const __DECL_SIMD_acoshf64 = "";
pub const __DECL_SIMD_acoshf128 = "";
pub const __DECL_SIMD_acoshf32x = "";
pub const __DECL_SIMD_acoshf64x = "";
pub const __DECL_SIMD_acoshf128x = "";
pub const __DECL_SIMD_erf = "";
pub const __DECL_SIMD_erff = "";
pub const __DECL_SIMD_erfl = "";
pub const __DECL_SIMD_erff16 = "";
pub const __DECL_SIMD_erff32 = "";
pub const __DECL_SIMD_erff64 = "";
pub const __DECL_SIMD_erff128 = "";
pub const __DECL_SIMD_erff32x = "";
pub const __DECL_SIMD_erff64x = "";
pub const __DECL_SIMD_erff128x = "";
pub const __DECL_SIMD_tanh = "";
pub const __DECL_SIMD_tanhf = "";
pub const __DECL_SIMD_tanhl = "";
pub const __DECL_SIMD_tanhf16 = "";
pub const __DECL_SIMD_tanhf32 = "";
pub const __DECL_SIMD_tanhf64 = "";
pub const __DECL_SIMD_tanhf128 = "";
pub const __DECL_SIMD_tanhf32x = "";
pub const __DECL_SIMD_tanhf64x = "";
pub const __DECL_SIMD_tanhf128x = "";
pub const __DECL_SIMD_asinh = "";
pub const __DECL_SIMD_asinhf = "";
pub const __DECL_SIMD_asinhl = "";
pub const __DECL_SIMD_asinhf16 = "";
pub const __DECL_SIMD_asinhf32 = "";
pub const __DECL_SIMD_asinhf64 = "";
pub const __DECL_SIMD_asinhf128 = "";
pub const __DECL_SIMD_asinhf32x = "";
pub const __DECL_SIMD_asinhf64x = "";
pub const __DECL_SIMD_asinhf128x = "";
pub const __DECL_SIMD_erfc = "";
pub const __DECL_SIMD_erfcf = "";
pub const __DECL_SIMD_erfcl = "";
pub const __DECL_SIMD_erfcf16 = "";
pub const __DECL_SIMD_erfcf32 = "";
pub const __DECL_SIMD_erfcf64 = "";
pub const __DECL_SIMD_erfcf128 = "";
pub const __DECL_SIMD_erfcf32x = "";
pub const __DECL_SIMD_erfcf64x = "";
pub const __DECL_SIMD_erfcf128x = "";
pub const __DECL_SIMD_tan = "";
pub const __DECL_SIMD_tanf = "";
pub const __DECL_SIMD_tanl = "";
pub const __DECL_SIMD_tanf16 = "";
pub const __DECL_SIMD_tanf32 = "";
pub const __DECL_SIMD_tanf64 = "";
pub const __DECL_SIMD_tanf128 = "";
pub const __DECL_SIMD_tanf32x = "";
pub const __DECL_SIMD_tanf64x = "";
pub const __DECL_SIMD_tanf128x = "";
pub const HUGE_VAL = @compileError("unable to translate macro: undefined identifier `__builtin_huge_val`");
// /usr/include/math.h:48:10
pub const HUGE_VALF = __builtin_huge_valf();
pub const HUGE_VALL = @compileError("unable to translate macro: undefined identifier `__builtin_huge_vall`");
// /usr/include/math.h:60:11
pub const INFINITY = __builtin_inff();
pub const NAN = __builtin_nanf("");
pub const __GLIBC_FLT_EVAL_METHOD = @compileError("unable to translate macro: undefined identifier `__FLT_EVAL_METHOD__`");
// /usr/include/bits/flt-eval-method.h:27:11
pub const __FP_LOGB0_IS_MIN = @as(c_int, 1);
pub const __FP_LOGBNAN_IS_MIN = @as(c_int, 1);
pub const FP_ILOGB0 = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const FP_ILOGBNAN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const __SIMD_DECL = @compileError("unable to translate macro: undefined identifier `__DECL_SIMD_`");
// /usr/include/math.h:276:9
pub inline fn __MATHCALL_VEC(function: anytype, suffix: anytype, args: anytype) @TypeOf(__SIMD_DECL(__MATH_PRECNAME(function, suffix)) ++ __MATHCALL(function, suffix, args)) {
    _ = &function;
    _ = &suffix;
    _ = &args;
    return __SIMD_DECL(__MATH_PRECNAME(function, suffix)) ++ __MATHCALL(function, suffix, args);
}
pub inline fn __MATHDECL_VEC(type_1: anytype, function: anytype, suffix: anytype, args: anytype) @TypeOf(__SIMD_DECL(__MATH_PRECNAME(function, suffix)) ++ __MATHDECL(type_1, function, suffix, args)) {
    _ = &type_1;
    _ = &function;
    _ = &suffix;
    _ = &args;
    return __SIMD_DECL(__MATH_PRECNAME(function, suffix)) ++ __MATHDECL(type_1, function, suffix, args);
}
pub inline fn __MATHCALL(function: anytype, suffix: anytype, args: anytype) @TypeOf(__MATHDECL(_Mdouble_, function, suffix, args)) {
    _ = &function;
    _ = &suffix;
    _ = &args;
    return __MATHDECL(_Mdouble_, function, suffix, args);
}
pub const __MATHDECL = @compileError("unable to translate macro: undefined identifier `__`");
// /usr/include/math.h:288:9
pub inline fn __MATHCALLX(function: anytype, suffix: anytype, args: anytype, attrib: anytype) @TypeOf(__MATHDECLX(_Mdouble_, function, suffix, args, attrib)) {
    _ = &function;
    _ = &suffix;
    _ = &args;
    _ = &attrib;
    return __MATHDECLX(_Mdouble_, function, suffix, args, attrib);
}
pub const __MATHDECLX = @compileError("unable to translate macro: undefined identifier `__`");
// /usr/include/math.h:293:9
pub const __MATHDECL_1_IMPL = @compileError("unable to translate C expr: unexpected token 'extern'");
// /usr/include/math.h:296:9
pub inline fn __MATHDECL_1(type_1: anytype, function: anytype, suffix: anytype, args: anytype) @TypeOf(__MATHDECL_1_IMPL(type_1, function, suffix, args)) {
    _ = &type_1;
    _ = &function;
    _ = &suffix;
    _ = &args;
    return __MATHDECL_1_IMPL(type_1, function, suffix, args);
}
pub inline fn __MATHDECL_ALIAS(type_1: anytype, function: anytype, suffix: anytype, args: anytype, alias: anytype) @TypeOf(__MATHDECL_1(type_1, function, suffix, args)) {
    _ = &type_1;
    _ = &function;
    _ = &suffix;
    _ = &args;
    _ = &alias;
    return __MATHDECL_1(type_1, function, suffix, args);
}
pub const __MATHREDIR = @compileError("unable to translate C expr: unexpected token 'extern'");
// /usr/include/math.h:305:9
pub const _Mdouble_ = f64;
pub inline fn __MATH_PRECNAME(name: anytype, r: anytype) @TypeOf(__CONCAT(name, r)) {
    _ = &name;
    _ = &r;
    return __CONCAT(name, r);
}
pub const __MATH_DECLARING_DOUBLE = @as(c_int, 1);
pub const __MATH_DECLARING_FLOATN = @as(c_int, 0);
pub const __MATH_DECLARE_LDOUBLE = @as(c_int, 1);
pub const __MATHCALL_NARROW_ARGS_1 = @compileError("unable to translate macro: undefined identifier `_Marg_`");
// /usr/include/math.h:550:9
pub const __MATHCALL_NARROW_ARGS_2 = @compileError("unable to translate macro: undefined identifier `_Marg_`");
// /usr/include/math.h:551:9
pub const __MATHCALL_NARROW_ARGS_3 = @compileError("unable to translate macro: undefined identifier `_Marg_`");
// /usr/include/math.h:552:9
pub const __MATHCALL_NARROW_NORMAL = @compileError("unable to translate macro: undefined identifier `_Mret_`");
// /usr/include/math.h:553:9
pub const __MATHCALL_NARROW_REDIR = @compileError("unable to translate macro: undefined identifier `_Mret_`");
// /usr/include/math.h:555:9
pub inline fn __MATHCALL_NARROW(func: anytype, redir: anytype, nargs: anytype) @TypeOf(__MATHCALL_NARROW_NORMAL(func, nargs)) {
    _ = &func;
    _ = &redir;
    _ = &nargs;
    return __MATHCALL_NARROW_NORMAL(func, nargs);
}
pub const __MATH_TG = @compileError("unable to translate macro: undefined identifier `f`");
// /usr/include/math.h:922:10
pub const fpclassify = @compileError("unable to translate macro: undefined identifier `__builtin_fpclassify`");
// /usr/include/math.h:967:11
pub inline fn signbit(x: anytype) @TypeOf(__builtin_signbit(x)) {
    _ = &x;
    return __builtin_signbit(x);
}
pub const isfinite = @compileError("unable to translate macro: undefined identifier `__builtin_isfinite`");
// /usr/include/math.h:994:11
pub const isnormal = @compileError("unable to translate macro: undefined identifier `__builtin_isnormal`");
// /usr/include/math.h:1002:11
pub const MATH_ERRNO = @as(c_int, 1);
pub const MATH_ERREXCEPT = @as(c_int, 2);
pub const math_errhandling = MATH_ERRNO | MATH_ERREXCEPT;
pub const M_E = @as(f64, 2.7182818284590452354);
pub const M_LOG2E = @as(f64, 1.4426950408889634074);
pub const M_LOG10E = @as(f64, 0.43429448190325182765);
pub const M_LN2 = @as(f64, 0.69314718055994530942);
pub const M_LN10 = @as(f64, 2.30258509299404568402);
pub const M_PI = @as(f64, 3.14159265358979323846);
pub const M_PI_2 = @as(f64, 1.57079632679489661923);
pub const M_PI_4 = @as(f64, 0.78539816339744830962);
pub const M_1_PI = @as(f64, 0.31830988618379067154);
pub const M_2_PI = @as(f64, 0.63661977236758134308);
pub const M_2_SQRTPI = @as(f64, 1.12837916709551257390);
pub const M_SQRT2 = @as(f64, 1.41421356237309504880);
pub const M_SQRT1_2 = @as(f64, 0.70710678118654752440);
pub const isgreater = @compileError("unable to translate macro: undefined identifier `__builtin_isgreater`");
// /usr/include/math.h:1305:11
pub const isgreaterequal = @compileError("unable to translate macro: undefined identifier `__builtin_isgreaterequal`");
// /usr/include/math.h:1306:11
pub const isless = @compileError("unable to translate macro: undefined identifier `__builtin_isless`");
// /usr/include/math.h:1307:11
pub const islessequal = @compileError("unable to translate macro: undefined identifier `__builtin_islessequal`");
// /usr/include/math.h:1308:11
pub const islessgreater = @compileError("unable to translate macro: undefined identifier `__builtin_islessgreater`");
// /usr/include/math.h:1309:11
pub const isunordered = @compileError("unable to translate macro: undefined identifier `__builtin_isunordered`");
// /usr/include/math.h:1310:11
pub const _STRING_H = @as(c_int, 1);
pub const _BITS_TYPES_LOCALE_T_H = @as(c_int, 1);
pub const _BITS_TYPES___LOCALE_T_H = @as(c_int, 1);
pub const _STRINGS_H = @as(c_int, 1);
pub const _ASSERT_H = @as(c_int, 1);
pub const __ASSERT_VOID_CAST = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/assert.h:40:10
pub const _ASSERT_H_DECLS = "";
pub const assert = @compileError("unable to translate macro: undefined identifier `__FILE__`");
// /usr/include/assert.h:107:11
pub const __ASSERT_FUNCTION = @compileError("unable to translate C expr: unexpected token '__extension__'");
// /usr/include/assert.h:129:12
pub const static_assert = @compileError("unable to translate C expr: unexpected token '_Static_assert'");
// /usr/include/assert.h:143:10
pub const _TIME_H = @as(c_int, 1);
pub const _BITS_TIME_H = @as(c_int, 1);
pub const CLOCKS_PER_SEC = @import("std").zig.c_translation.cast(__clock_t, @import("std").zig.c_translation.promoteIntLiteral(c_int, 1000000, .decimal));
pub const CLOCK_REALTIME = @as(c_int, 0);
pub const CLOCK_MONOTONIC = @as(c_int, 1);
pub const CLOCK_PROCESS_CPUTIME_ID = @as(c_int, 2);
pub const CLOCK_THREAD_CPUTIME_ID = @as(c_int, 3);
pub const CLOCK_MONOTONIC_RAW = @as(c_int, 4);
pub const CLOCK_REALTIME_COARSE = @as(c_int, 5);
pub const CLOCK_MONOTONIC_COARSE = @as(c_int, 6);
pub const CLOCK_BOOTTIME = @as(c_int, 7);
pub const CLOCK_REALTIME_ALARM = @as(c_int, 8);
pub const CLOCK_BOOTTIME_ALARM = @as(c_int, 9);
pub const CLOCK_TAI = @as(c_int, 11);
pub const TIMER_ABSTIME = @as(c_int, 1);
pub const __struct_tm_defined = @as(c_int, 1);
pub const __itimerspec_defined = @as(c_int, 1);
pub const TIME_UTC = @as(c_int, 1);
pub inline fn __isleap(year: anytype) @TypeOf((@import("std").zig.c_translation.MacroArithmetic.rem(year, @as(c_int, 4)) == @as(c_int, 0)) and ((@import("std").zig.c_translation.MacroArithmetic.rem(year, @as(c_int, 100)) != @as(c_int, 0)) or (@import("std").zig.c_translation.MacroArithmetic.rem(year, @as(c_int, 400)) == @as(c_int, 0)))) {
    _ = &year;
    return (@import("std").zig.c_translation.MacroArithmetic.rem(year, @as(c_int, 4)) == @as(c_int, 0)) and ((@import("std").zig.c_translation.MacroArithmetic.rem(year, @as(c_int, 100)) != @as(c_int, 0)) or (@import("std").zig.c_translation.MacroArithmetic.rem(year, @as(c_int, 400)) == @as(c_int, 0)));
}
pub const __STANDALONE__ = "";
pub const __LINENOISE_H = "";
pub const __need_ptrdiff_t = "";
pub const __need_max_align_t = "";
pub const __need_offsetof = "";
pub const __STDDEF_H = "";
pub const _PTRDIFF_T = "";
pub const __CLANG_MAX_ALIGN_T_DEFINED = "";
pub const offsetof = @compileError("unable to translate C expr: unexpected token 'an identifier'");
// /home/eliot/.local/lib/zig/lib/include/__stddef_offsetof.h:16:9
pub const SDSIZE = @as(c_int, 0);
pub const WORDALIGNED = @compileError("unable to translate macro: undefined identifier `aligned`");
// src/ulisp.c:90:9
pub const BUFFERSIZE = @as(c_int, 36);
pub const WORKSPACESIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65536, .decimal) - SDSIZE;
pub const MAX_STACK = @as(c_int, 8000);
pub const SDCARD_SS_PIN = @as(c_int, 13);
pub const LED_BUILTIN = @as(c_int, 13);
pub const PROGMEM = "";
pub inline fn PSTR(s: anytype) @TypeOf(s) {
    _ = &s;
    return s;
}
pub const TODO0 = @compileError("unable to translate C expr: unexpected token '{'");
// src/ulisp.c:101:9
pub const TODO0C = @compileError("unable to translate C expr: unexpected token '{'");
// src/ulisp.c:102:9
pub const TODO1 = @compileError("unable to translate C expr: unexpected token '{'");
// src/ulisp.c:103:9
pub const LOW = @as(c_int, 0);
pub const HIGH = @as(c_int, 1);
pub const INPUT = @as(c_int, 2);
pub const INPUT_PULLUP = @as(c_int, 3);
pub const INPUT_PULLDOWN = @as(c_int, 4);
pub const OUTPUT = @as(c_int, 5);
pub const nil = NULL;
pub inline fn car(x: anytype) @TypeOf(@import("std").zig.c_translation.cast([*c]object, x).*.car) {
    _ = &x;
    return @import("std").zig.c_translation.cast([*c]object, x).*.car;
}
pub inline fn cdr(x: anytype) @TypeOf(@import("std").zig.c_translation.cast([*c]object, x).*.cdr) {
    _ = &x;
    return @import("std").zig.c_translation.cast([*c]object, x).*.cdr;
}
pub inline fn first(x: anytype) @TypeOf(car(x)) {
    _ = &x;
    return car(x);
}
pub inline fn rest(x: anytype) @TypeOf(cdr(x)) {
    _ = &x;
    return cdr(x);
}
pub inline fn second(x: anytype) @TypeOf(first(rest(x))) {
    _ = &x;
    return first(rest(x));
}
pub inline fn cddr(x: anytype) @TypeOf(cdr(cdr(x))) {
    _ = &x;
    return cdr(cdr(x));
}
pub inline fn third(x: anytype) @TypeOf(first(cddr(x))) {
    _ = &x;
    return first(cddr(x));
}
pub const push = @compileError("unable to translate C expr: expected ')' instead got '='");
// src/ulisp.c:124:9
pub const pop = @compileError("unable to translate C expr: expected ')' instead got '='");
// src/ulisp.c:125:9
pub inline fn protect(y: anytype) @TypeOf(push(y, GCStack)) {
    _ = &y;
    return push(y, GCStack);
}
pub inline fn unprotect() @TypeOf(pop(GCStack)) {
    return pop(GCStack);
}
pub inline fn integerp(x: anytype) @TypeOf((x != NULL) and (x.*.type == NUMBER)) {
    _ = &x;
    return (x != NULL) and (x.*.type == NUMBER);
}
pub inline fn floatp(x: anytype) @TypeOf((x != NULL) and (x.*.type == FLOAT)) {
    _ = &x;
    return (x != NULL) and (x.*.type == FLOAT);
}
pub inline fn symbolp(x: anytype) @TypeOf((x != NULL) and (x.*.type == SYMBOL)) {
    _ = &x;
    return (x != NULL) and (x.*.type == SYMBOL);
}
pub inline fn stringp(x: anytype) @TypeOf((x != NULL) and (x.*.type == STRING)) {
    _ = &x;
    return (x != NULL) and (x.*.type == STRING);
}
pub inline fn characterp(x: anytype) @TypeOf((x != NULL) and (x.*.type == CHARACTER)) {
    _ = &x;
    return (x != NULL) and (x.*.type == CHARACTER);
}
pub inline fn arrayp(x: anytype) @TypeOf((x != NULL) and (x.*.type == ARRAY)) {
    _ = &x;
    return (x != NULL) and (x.*.type == ARRAY);
}
pub inline fn streamp(x: anytype) @TypeOf((x != NULL) and (x.*.type == STREAM)) {
    _ = &x;
    return (x != NULL) and (x.*.type == STREAM);
}
pub const mark = @compileError("unable to translate C expr: expected ')' instead got '='");
// src/ulisp.c:138:9
pub const unmark = @compileError("unable to translate C expr: expected ')' instead got '='");
// src/ulisp.c:139:9
pub inline fn marked(x: anytype) @TypeOf((@import("std").zig.c_translation.cast(usize, car(x)) & MARKBIT) != @as(c_int, 0)) {
    _ = &x;
    return (@import("std").zig.c_translation.cast(usize, car(x)) & MARKBIT) != @as(c_int, 0);
}
pub const MARKBIT = @as(c_int, 1);
pub const setflag = @compileError("unable to translate C expr: expected ')' instead got '='");
// src/ulisp.c:143:9
pub const clrflag = @compileError("unable to translate C expr: expected ')' instead got '='");
// src/ulisp.c:144:9
pub inline fn tstflag(x: anytype) @TypeOf(Flags & (@as(c_int, 1) << x)) {
    _ = &x;
    return Flags & (@as(c_int, 1) << x);
}
pub inline fn issp(x: anytype) @TypeOf((((x == ' ') or (x == '\n')) or (x == '\r')) or (x == '\t')) {
    _ = &x;
    return (((x == ' ') or (x == '\n')) or (x == '\r')) or (x == '\t');
}
pub inline fn isbr(x: anytype) @TypeOf(((((x == ')') or (x == '(')) or (x == '"')) or (x == '#')) or (x == '\'')) {
    _ = &x;
    return ((((x == ')') or (x == '(')) or (x == '"')) or (x == '#')) or (x == '\'');
}
pub inline fn fntype(x: anytype) @TypeOf(getminmax(@import("std").zig.c_translation.cast(u16, x)) >> @as(c_int, 6)) {
    _ = &x;
    return getminmax(@import("std").zig.c_translation.cast(u16, x)) >> @as(c_int, 6);
}
pub inline fn longsymbolp(x: anytype) @TypeOf((x.*.name & @as(c_int, 0x03)) == @as(c_int, 0)) {
    _ = &x;
    return (x.*.name & @as(c_int, 0x03)) == @as(c_int, 0);
}
pub inline fn longnamep(x: anytype) @TypeOf((x & @as(c_int, 0x03)) == @as(c_int, 0)) {
    _ = &x;
    return (x & @as(c_int, 0x03)) == @as(c_int, 0);
}
pub inline fn twist(x: anytype) @TypeOf(@import("std").zig.c_translation.cast(u32, x << @as(c_int, 2)) | ((x & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xC0000000, .hex)) >> @as(c_int, 30))) {
    _ = &x;
    return @import("std").zig.c_translation.cast(u32, x << @as(c_int, 2)) | ((x & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xC0000000, .hex)) >> @as(c_int, 30));
}
pub inline fn untwist(x: anytype) @TypeOf(((x >> @as(c_int, 2)) & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x3FFFFFFF, .hex)) | ((x & @as(c_int, 0x03)) << @as(c_int, 30))) {
    _ = &x;
    return ((x >> @as(c_int, 2)) & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x3FFFFFFF, .hex)) | ((x & @as(c_int, 0x03)) << @as(c_int, 30));
}
pub const arraysize = @compileError("unable to translate C expr: expected ')' instead got '['");
// src/ulisp.c:154:9
pub const stringifyX = @compileError("unable to translate C expr: unexpected token '#'");
// src/ulisp.c:155:9
pub inline fn stringify(x: anytype) @TypeOf(stringifyX(x)) {
    _ = &x;
    return stringifyX(x);
}
pub const PACKEDS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x43238000, .hex);
pub const BUILTINS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xF4240000, .hex);
pub const ENDFUNCTIONS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x0BDC0000, .hex);
pub const USERSTREAMS = @as(c_int, 16);
pub const TRACEMAX = @as(c_int, 3);
pub const BACKTRACESIZE = @as(c_int, 8);
pub inline fn bitRead(value_1: anytype, bit: anytype) @TypeOf((value_1 >> bit) & @as(c_int, 0x01)) {
    _ = &value_1;
    _ = &bit;
    return (value_1 >> bit) & @as(c_int, 0x01);
}
pub const testescape = yield_loop;
pub inline fn atom(x: anytype) @TypeOf(!(consp(x) != 0)) {
    _ = &x;
    return !(consp(x) != 0);
}
pub inline fn improperp(x: anytype) @TypeOf(!(listp(x) != 0)) {
    _ = &x;
    return !(listp(x) != 0);
}
pub const ULISP_WIFI = "";
pub const KybdBufSize = @as(c_int, 333);
pub const __jmp_buf_tag = struct___jmp_buf_tag;
pub const timeval = struct_timeval;
pub const timespec = struct_timespec;
pub const __pthread_internal_list = struct___pthread_internal_list;
pub const __pthread_internal_slist = struct___pthread_internal_slist;
pub const __pthread_mutex_s = struct___pthread_mutex_s;
pub const __pthread_rwlock_arch_t = struct___pthread_rwlock_arch_t;
pub const __pthread_cond_s = struct___pthread_cond_s;
pub const random_data = struct_random_data;
pub const drand48_data = struct_drand48_data;
pub const _G_fpos_t = struct__G_fpos_t;
pub const _G_fpos64_t = struct__G_fpos64_t;
pub const _IO_marker = struct__IO_marker;
pub const _IO_codecvt = struct__IO_codecvt;
pub const _IO_wide_data = struct__IO_wide_data;
pub const _IO_FILE = struct__IO_FILE;
pub const __locale_struct = struct___locale_struct;
pub const tm = struct_tm;
pub const itimerspec = struct_itimerspec;
pub const sigevent = struct_sigevent;
pub const linenoiseState = struct_linenoiseState;
pub const @"type" = enum_type;
pub const token = enum_token;
pub const fntypes_t = enum_fntypes_t;
pub const sobject = struct_sobject;
pub const flag = enum_flag;
