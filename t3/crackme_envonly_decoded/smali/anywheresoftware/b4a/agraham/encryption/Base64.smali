.class public Lanywheresoftware/b4a/agraham/encryption/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$Author;
    value = "Andrew Graham"
.end annotation

.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "Base64"
.end annotation


# static fields
.field private static final EQUALS_SIGN:B = 0x3dt

.field private static final EQUALS_SIGN_ENC:B = -0x1t

.field private static final NEW_LINE:B = 0xat

.field private static final WHITE_SPACE_ENC:B = -0x5t

.field private static final _STANDARD_ALPHABET:[B = null

.field private static final _STANDARD_DECODABET:[B = null

.field private static final _URL_SAFE_ALPHABET:[B = null

.field private static final _URL_SAFE_DECODABET:[B = null

.field private static final version:D = 1.0


# instance fields
.field private breaklines:Z

.field private maxlinelength:I

.field private urlsafe:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x5

    const/16 v3, -0x9

    .line 50
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lanywheresoftware/b4a/agraham/encryption/Base64;->_STANDARD_ALPHABET:[B

    .line 66
    const/16 v0, 0x100

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 67
    aput-byte v3, v0, v1

    aput-byte v3, v0, v5

    aput-byte v3, v0, v6

    aput-byte v3, v0, v7

    const/4 v1, 0x4

    aput-byte v3, v0, v1

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    const/4 v1, 0x7

    aput-byte v3, v0, v1

    const/16 v1, 0x8

    aput-byte v3, v0, v1

    const/16 v1, 0x9

    .line 68
    aput-byte v4, v0, v1

    const/16 v1, 0xa

    aput-byte v4, v0, v1

    const/16 v1, 0xb

    .line 69
    aput-byte v3, v0, v1

    const/16 v1, 0xc

    aput-byte v3, v0, v1

    const/16 v1, 0xd

    .line 70
    aput-byte v4, v0, v1

    const/16 v1, 0xe

    .line 71
    aput-byte v3, v0, v1

    const/16 v1, 0xf

    aput-byte v3, v0, v1

    const/16 v1, 0x10

    aput-byte v3, v0, v1

    const/16 v1, 0x11

    aput-byte v3, v0, v1

    const/16 v1, 0x12

    aput-byte v3, v0, v1

    const/16 v1, 0x13

    aput-byte v3, v0, v1

    const/16 v1, 0x14

    aput-byte v3, v0, v1

    const/16 v1, 0x15

    aput-byte v3, v0, v1

    const/16 v1, 0x16

    aput-byte v3, v0, v1

    const/16 v1, 0x17

    aput-byte v3, v0, v1

    const/16 v1, 0x18

    aput-byte v3, v0, v1

    const/16 v1, 0x19

    aput-byte v3, v0, v1

    const/16 v1, 0x1a

    aput-byte v3, v0, v1

    const/16 v1, 0x1b

    .line 72
    aput-byte v3, v0, v1

    const/16 v1, 0x1c

    aput-byte v3, v0, v1

    const/16 v1, 0x1d

    aput-byte v3, v0, v1

    const/16 v1, 0x1e

    aput-byte v3, v0, v1

    const/16 v1, 0x1f

    aput-byte v3, v0, v1

    const/16 v1, 0x20

    .line 73
    aput-byte v4, v0, v1

    const/16 v1, 0x21

    .line 74
    aput-byte v3, v0, v1

    const/16 v1, 0x22

    aput-byte v3, v0, v1

    const/16 v1, 0x23

    aput-byte v3, v0, v1

    const/16 v1, 0x24

    aput-byte v3, v0, v1

    const/16 v1, 0x25

    aput-byte v3, v0, v1

    const/16 v1, 0x26

    aput-byte v3, v0, v1

    const/16 v1, 0x27

    aput-byte v3, v0, v1

    const/16 v1, 0x28

    aput-byte v3, v0, v1

    const/16 v1, 0x29

    aput-byte v3, v0, v1

    const/16 v1, 0x2a

    aput-byte v3, v0, v1

    const/16 v1, 0x2b

    .line 75
    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    .line 76
    aput-byte v3, v0, v1

    const/16 v1, 0x2d

    aput-byte v3, v0, v1

    const/16 v1, 0x2e

    aput-byte v3, v0, v1

    const/16 v1, 0x2f

    .line 77
    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    .line 78
    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    .line 79
    aput-byte v3, v0, v1

    const/16 v1, 0x3b

    aput-byte v3, v0, v1

    const/16 v1, 0x3c

    aput-byte v3, v0, v1

    const/16 v1, 0x3d

    .line 80
    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    .line 81
    aput-byte v3, v0, v1

    const/16 v1, 0x3f

    aput-byte v3, v0, v1

    const/16 v1, 0x40

    aput-byte v3, v0, v1

    const/16 v1, 0x42

    .line 82
    aput-byte v5, v0, v1

    const/16 v1, 0x43

    aput-byte v6, v0, v1

    const/16 v1, 0x44

    aput-byte v7, v0, v1

    const/16 v1, 0x45

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    .line 83
    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    .line 84
    aput-byte v3, v0, v1

    const/16 v1, 0x5c

    aput-byte v3, v0, v1

    const/16 v1, 0x5d

    aput-byte v3, v0, v1

    const/16 v1, 0x5e

    aput-byte v3, v0, v1

    const/16 v1, 0x5f

    aput-byte v3, v0, v1

    const/16 v1, 0x60

    aput-byte v3, v0, v1

    const/16 v1, 0x61

    .line 85
    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    .line 86
    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    .line 87
    aput-byte v3, v0, v1

    const/16 v1, 0x7c

    aput-byte v3, v0, v1

    const/16 v1, 0x7d

    aput-byte v3, v0, v1

    const/16 v1, 0x7e

    aput-byte v3, v0, v1

    const/16 v1, 0x7f

    aput-byte v3, v0, v1

    const/16 v1, 0x80

    .line 88
    aput-byte v3, v0, v1

    const/16 v1, 0x81

    aput-byte v3, v0, v1

    const/16 v1, 0x82

    aput-byte v3, v0, v1

    const/16 v1, 0x83

    aput-byte v3, v0, v1

    const/16 v1, 0x84

    aput-byte v3, v0, v1

    const/16 v1, 0x85

    aput-byte v3, v0, v1

    const/16 v1, 0x86

    aput-byte v3, v0, v1

    const/16 v1, 0x87

    aput-byte v3, v0, v1

    const/16 v1, 0x88

    aput-byte v3, v0, v1

    const/16 v1, 0x89

    aput-byte v3, v0, v1

    const/16 v1, 0x8a

    aput-byte v3, v0, v1

    const/16 v1, 0x8b

    aput-byte v3, v0, v1

    const/16 v1, 0x8c

    .line 89
    aput-byte v3, v0, v1

    const/16 v1, 0x8d

    aput-byte v3, v0, v1

    const/16 v1, 0x8e

    aput-byte v3, v0, v1

    const/16 v1, 0x8f

    aput-byte v3, v0, v1

    const/16 v1, 0x90

    aput-byte v3, v0, v1

    const/16 v1, 0x91

    aput-byte v3, v0, v1

    const/16 v1, 0x92

    aput-byte v3, v0, v1

    const/16 v1, 0x93

    aput-byte v3, v0, v1

    const/16 v1, 0x94

    aput-byte v3, v0, v1

    const/16 v1, 0x95

    aput-byte v3, v0, v1

    const/16 v1, 0x96

    aput-byte v3, v0, v1

    const/16 v1, 0x97

    aput-byte v3, v0, v1

    const/16 v1, 0x98

    aput-byte v3, v0, v1

    const/16 v1, 0x99

    .line 90
    aput-byte v3, v0, v1

    const/16 v1, 0x9a

    aput-byte v3, v0, v1

    const/16 v1, 0x9b

    aput-byte v3, v0, v1

    const/16 v1, 0x9c

    aput-byte v3, v0, v1

    const/16 v1, 0x9d

    aput-byte v3, v0, v1

    const/16 v1, 0x9e

    aput-byte v3, v0, v1

    const/16 v1, 0x9f

    aput-byte v3, v0, v1

    const/16 v1, 0xa0

    aput-byte v3, v0, v1

    const/16 v1, 0xa1

    aput-byte v3, v0, v1

    const/16 v1, 0xa2

    aput-byte v3, v0, v1

    const/16 v1, 0xa3

    aput-byte v3, v0, v1

    const/16 v1, 0xa4

    aput-byte v3, v0, v1

    const/16 v1, 0xa5

    aput-byte v3, v0, v1

    const/16 v1, 0xa6

    .line 91
    aput-byte v3, v0, v1

    const/16 v1, 0xa7

    aput-byte v3, v0, v1

    const/16 v1, 0xa8

    aput-byte v3, v0, v1

    const/16 v1, 0xa9

    aput-byte v3, v0, v1

    const/16 v1, 0xaa

    aput-byte v3, v0, v1

    const/16 v1, 0xab

    aput-byte v3, v0, v1

    const/16 v1, 0xac

    aput-byte v3, v0, v1

    const/16 v1, 0xad

    aput-byte v3, v0, v1

    const/16 v1, 0xae

    aput-byte v3, v0, v1

    const/16 v1, 0xaf

    aput-byte v3, v0, v1

    const/16 v1, 0xb0

    aput-byte v3, v0, v1

    const/16 v1, 0xb1

    aput-byte v3, v0, v1

    const/16 v1, 0xb2

    aput-byte v3, v0, v1

    const/16 v1, 0xb3

    .line 92
    aput-byte v3, v0, v1

    const/16 v1, 0xb4

    aput-byte v3, v0, v1

    const/16 v1, 0xb5

    aput-byte v3, v0, v1

    const/16 v1, 0xb6

    aput-byte v3, v0, v1

    const/16 v1, 0xb7

    aput-byte v3, v0, v1

    const/16 v1, 0xb8

    aput-byte v3, v0, v1

    const/16 v1, 0xb9

    aput-byte v3, v0, v1

    const/16 v1, 0xba

    aput-byte v3, v0, v1

    const/16 v1, 0xbb

    aput-byte v3, v0, v1

    const/16 v1, 0xbc

    aput-byte v3, v0, v1

    const/16 v1, 0xbd

    aput-byte v3, v0, v1

    const/16 v1, 0xbe

    aput-byte v3, v0, v1

    const/16 v1, 0xbf

    aput-byte v3, v0, v1

    const/16 v1, 0xc0

    .line 93
    aput-byte v3, v0, v1

    const/16 v1, 0xc1

    aput-byte v3, v0, v1

    const/16 v1, 0xc2

    aput-byte v3, v0, v1

    const/16 v1, 0xc3

    aput-byte v3, v0, v1

    const/16 v1, 0xc4

    aput-byte v3, v0, v1

    const/16 v1, 0xc5

    aput-byte v3, v0, v1

    const/16 v1, 0xc6

    aput-byte v3, v0, v1

    const/16 v1, 0xc7

    aput-byte v3, v0, v1

    const/16 v1, 0xc8

    aput-byte v3, v0, v1

    const/16 v1, 0xc9

    aput-byte v3, v0, v1

    const/16 v1, 0xca

    aput-byte v3, v0, v1

    const/16 v1, 0xcb

    aput-byte v3, v0, v1

    const/16 v1, 0xcc

    aput-byte v3, v0, v1

    const/16 v1, 0xcd

    .line 94
    aput-byte v3, v0, v1

    const/16 v1, 0xce

    aput-byte v3, v0, v1

    const/16 v1, 0xcf

    aput-byte v3, v0, v1

    const/16 v1, 0xd0

    aput-byte v3, v0, v1

    const/16 v1, 0xd1

    aput-byte v3, v0, v1

    const/16 v1, 0xd2

    aput-byte v3, v0, v1

    const/16 v1, 0xd3

    aput-byte v3, v0, v1

    const/16 v1, 0xd4

    aput-byte v3, v0, v1

    const/16 v1, 0xd5

    aput-byte v3, v0, v1

    const/16 v1, 0xd6

    aput-byte v3, v0, v1

    const/16 v1, 0xd7

    aput-byte v3, v0, v1

    const/16 v1, 0xd8

    aput-byte v3, v0, v1

    const/16 v1, 0xd9

    aput-byte v3, v0, v1

    const/16 v1, 0xda

    .line 95
    aput-byte v3, v0, v1

    const/16 v1, 0xdb

    aput-byte v3, v0, v1

    const/16 v1, 0xdc

    aput-byte v3, v0, v1

    const/16 v1, 0xdd

    aput-byte v3, v0, v1

    const/16 v1, 0xde

    aput-byte v3, v0, v1

    const/16 v1, 0xdf

    aput-byte v3, v0, v1

    const/16 v1, 0xe0

    aput-byte v3, v0, v1

    const/16 v1, 0xe1

    aput-byte v3, v0, v1

    const/16 v1, 0xe2

    aput-byte v3, v0, v1

    const/16 v1, 0xe3

    aput-byte v3, v0, v1

    const/16 v1, 0xe4

    aput-byte v3, v0, v1

    const/16 v1, 0xe5

    aput-byte v3, v0, v1

    const/16 v1, 0xe6

    aput-byte v3, v0, v1

    const/16 v1, 0xe7

    .line 96
    aput-byte v3, v0, v1

    const/16 v1, 0xe8

    aput-byte v3, v0, v1

    const/16 v1, 0xe9

    aput-byte v3, v0, v1

    const/16 v1, 0xea

    aput-byte v3, v0, v1

    const/16 v1, 0xeb

    aput-byte v3, v0, v1

    const/16 v1, 0xec

    aput-byte v3, v0, v1

    const/16 v1, 0xed

    aput-byte v3, v0, v1

    const/16 v1, 0xee

    aput-byte v3, v0, v1

    const/16 v1, 0xef

    aput-byte v3, v0, v1

    const/16 v1, 0xf0

    aput-byte v3, v0, v1

    const/16 v1, 0xf1

    aput-byte v3, v0, v1

    const/16 v1, 0xf2

    aput-byte v3, v0, v1

    const/16 v1, 0xf3

    aput-byte v3, v0, v1

    const/16 v1, 0xf4

    .line 97
    aput-byte v3, v0, v1

    const/16 v1, 0xf5

    aput-byte v3, v0, v1

    const/16 v1, 0xf6

    aput-byte v3, v0, v1

    const/16 v1, 0xf7

    aput-byte v3, v0, v1

    const/16 v1, 0xf8

    aput-byte v3, v0, v1

    const/16 v1, 0xf9

    aput-byte v3, v0, v1

    const/16 v1, 0xfa

    aput-byte v3, v0, v1

    const/16 v1, 0xfb

    aput-byte v3, v0, v1

    const/16 v1, 0xfc

    aput-byte v3, v0, v1

    const/16 v1, 0xfd

    aput-byte v3, v0, v1

    const/16 v1, 0xfe

    aput-byte v3, v0, v1

    const/16 v1, 0xff

    aput-byte v3, v0, v1

    .line 66
    sput-object v0, Lanywheresoftware/b4a/agraham/encryption/Base64;->_STANDARD_DECODABET:[B

    .line 108
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lanywheresoftware/b4a/agraham/encryption/Base64;->_URL_SAFE_ALPHABET:[B

    .line 122
    const/16 v0, 0x100

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 123
    aput-byte v3, v0, v1

    aput-byte v3, v0, v5

    aput-byte v3, v0, v6

    aput-byte v3, v0, v7

    const/4 v1, 0x4

    aput-byte v3, v0, v1

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    const/4 v1, 0x7

    aput-byte v3, v0, v1

    const/16 v1, 0x8

    aput-byte v3, v0, v1

    const/16 v1, 0x9

    .line 124
    aput-byte v4, v0, v1

    const/16 v1, 0xa

    aput-byte v4, v0, v1

    const/16 v1, 0xb

    .line 125
    aput-byte v3, v0, v1

    const/16 v1, 0xc

    aput-byte v3, v0, v1

    const/16 v1, 0xd

    .line 126
    aput-byte v4, v0, v1

    const/16 v1, 0xe

    .line 127
    aput-byte v3, v0, v1

    const/16 v1, 0xf

    aput-byte v3, v0, v1

    const/16 v1, 0x10

    aput-byte v3, v0, v1

    const/16 v1, 0x11

    aput-byte v3, v0, v1

    const/16 v1, 0x12

    aput-byte v3, v0, v1

    const/16 v1, 0x13

    aput-byte v3, v0, v1

    const/16 v1, 0x14

    aput-byte v3, v0, v1

    const/16 v1, 0x15

    aput-byte v3, v0, v1

    const/16 v1, 0x16

    aput-byte v3, v0, v1

    const/16 v1, 0x17

    aput-byte v3, v0, v1

    const/16 v1, 0x18

    aput-byte v3, v0, v1

    const/16 v1, 0x19

    aput-byte v3, v0, v1

    const/16 v1, 0x1a

    aput-byte v3, v0, v1

    const/16 v1, 0x1b

    .line 128
    aput-byte v3, v0, v1

    const/16 v1, 0x1c

    aput-byte v3, v0, v1

    const/16 v1, 0x1d

    aput-byte v3, v0, v1

    const/16 v1, 0x1e

    aput-byte v3, v0, v1

    const/16 v1, 0x1f

    aput-byte v3, v0, v1

    const/16 v1, 0x20

    .line 129
    aput-byte v4, v0, v1

    const/16 v1, 0x21

    .line 130
    aput-byte v3, v0, v1

    const/16 v1, 0x22

    aput-byte v3, v0, v1

    const/16 v1, 0x23

    aput-byte v3, v0, v1

    const/16 v1, 0x24

    aput-byte v3, v0, v1

    const/16 v1, 0x25

    aput-byte v3, v0, v1

    const/16 v1, 0x26

    aput-byte v3, v0, v1

    const/16 v1, 0x27

    aput-byte v3, v0, v1

    const/16 v1, 0x28

    aput-byte v3, v0, v1

    const/16 v1, 0x29

    aput-byte v3, v0, v1

    const/16 v1, 0x2a

    aput-byte v3, v0, v1

    const/16 v1, 0x2b

    .line 131
    aput-byte v3, v0, v1

    const/16 v1, 0x2c

    .line 132
    aput-byte v3, v0, v1

    const/16 v1, 0x2d

    .line 133
    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    .line 134
    aput-byte v3, v0, v1

    const/16 v1, 0x2f

    .line 135
    aput-byte v3, v0, v1

    const/16 v1, 0x30

    .line 136
    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    .line 137
    aput-byte v3, v0, v1

    const/16 v1, 0x3b

    aput-byte v3, v0, v1

    const/16 v1, 0x3c

    aput-byte v3, v0, v1

    const/16 v1, 0x3d

    .line 138
    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    .line 139
    aput-byte v3, v0, v1

    const/16 v1, 0x3f

    aput-byte v3, v0, v1

    const/16 v1, 0x40

    aput-byte v3, v0, v1

    const/16 v1, 0x42

    .line 140
    aput-byte v5, v0, v1

    const/16 v1, 0x43

    aput-byte v6, v0, v1

    const/16 v1, 0x44

    aput-byte v7, v0, v1

    const/16 v1, 0x45

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    .line 141
    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    .line 142
    aput-byte v3, v0, v1

    const/16 v1, 0x5c

    aput-byte v3, v0, v1

    const/16 v1, 0x5d

    aput-byte v3, v0, v1

    const/16 v1, 0x5e

    aput-byte v3, v0, v1

    const/16 v1, 0x5f

    .line 143
    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    .line 144
    aput-byte v3, v0, v1

    const/16 v1, 0x61

    .line 145
    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    .line 146
    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    .line 147
    aput-byte v3, v0, v1

    const/16 v1, 0x7c

    aput-byte v3, v0, v1

    const/16 v1, 0x7d

    aput-byte v3, v0, v1

    const/16 v1, 0x7e

    aput-byte v3, v0, v1

    const/16 v1, 0x7f

    aput-byte v3, v0, v1

    const/16 v1, 0x80

    .line 148
    aput-byte v3, v0, v1

    const/16 v1, 0x81

    aput-byte v3, v0, v1

    const/16 v1, 0x82

    aput-byte v3, v0, v1

    const/16 v1, 0x83

    aput-byte v3, v0, v1

    const/16 v1, 0x84

    aput-byte v3, v0, v1

    const/16 v1, 0x85

    aput-byte v3, v0, v1

    const/16 v1, 0x86

    aput-byte v3, v0, v1

    const/16 v1, 0x87

    aput-byte v3, v0, v1

    const/16 v1, 0x88

    aput-byte v3, v0, v1

    const/16 v1, 0x89

    aput-byte v3, v0, v1

    const/16 v1, 0x8a

    aput-byte v3, v0, v1

    const/16 v1, 0x8b

    aput-byte v3, v0, v1

    const/16 v1, 0x8c

    .line 149
    aput-byte v3, v0, v1

    const/16 v1, 0x8d

    aput-byte v3, v0, v1

    const/16 v1, 0x8e

    aput-byte v3, v0, v1

    const/16 v1, 0x8f

    aput-byte v3, v0, v1

    const/16 v1, 0x90

    aput-byte v3, v0, v1

    const/16 v1, 0x91

    aput-byte v3, v0, v1

    const/16 v1, 0x92

    aput-byte v3, v0, v1

    const/16 v1, 0x93

    aput-byte v3, v0, v1

    const/16 v1, 0x94

    aput-byte v3, v0, v1

    const/16 v1, 0x95

    aput-byte v3, v0, v1

    const/16 v1, 0x96

    aput-byte v3, v0, v1

    const/16 v1, 0x97

    aput-byte v3, v0, v1

    const/16 v1, 0x98

    aput-byte v3, v0, v1

    const/16 v1, 0x99

    .line 150
    aput-byte v3, v0, v1

    const/16 v1, 0x9a

    aput-byte v3, v0, v1

    const/16 v1, 0x9b

    aput-byte v3, v0, v1

    const/16 v1, 0x9c

    aput-byte v3, v0, v1

    const/16 v1, 0x9d

    aput-byte v3, v0, v1

    const/16 v1, 0x9e

    aput-byte v3, v0, v1

    const/16 v1, 0x9f

    aput-byte v3, v0, v1

    const/16 v1, 0xa0

    aput-byte v3, v0, v1

    const/16 v1, 0xa1

    aput-byte v3, v0, v1

    const/16 v1, 0xa2

    aput-byte v3, v0, v1

    const/16 v1, 0xa3

    aput-byte v3, v0, v1

    const/16 v1, 0xa4

    aput-byte v3, v0, v1

    const/16 v1, 0xa5

    aput-byte v3, v0, v1

    const/16 v1, 0xa6

    .line 151
    aput-byte v3, v0, v1

    const/16 v1, 0xa7

    aput-byte v3, v0, v1

    const/16 v1, 0xa8

    aput-byte v3, v0, v1

    const/16 v1, 0xa9

    aput-byte v3, v0, v1

    const/16 v1, 0xaa

    aput-byte v3, v0, v1

    const/16 v1, 0xab

    aput-byte v3, v0, v1

    const/16 v1, 0xac

    aput-byte v3, v0, v1

    const/16 v1, 0xad

    aput-byte v3, v0, v1

    const/16 v1, 0xae

    aput-byte v3, v0, v1

    const/16 v1, 0xaf

    aput-byte v3, v0, v1

    const/16 v1, 0xb0

    aput-byte v3, v0, v1

    const/16 v1, 0xb1

    aput-byte v3, v0, v1

    const/16 v1, 0xb2

    aput-byte v3, v0, v1

    const/16 v1, 0xb3

    .line 152
    aput-byte v3, v0, v1

    const/16 v1, 0xb4

    aput-byte v3, v0, v1

    const/16 v1, 0xb5

    aput-byte v3, v0, v1

    const/16 v1, 0xb6

    aput-byte v3, v0, v1

    const/16 v1, 0xb7

    aput-byte v3, v0, v1

    const/16 v1, 0xb8

    aput-byte v3, v0, v1

    const/16 v1, 0xb9

    aput-byte v3, v0, v1

    const/16 v1, 0xba

    aput-byte v3, v0, v1

    const/16 v1, 0xbb

    aput-byte v3, v0, v1

    const/16 v1, 0xbc

    aput-byte v3, v0, v1

    const/16 v1, 0xbd

    aput-byte v3, v0, v1

    const/16 v1, 0xbe

    aput-byte v3, v0, v1

    const/16 v1, 0xbf

    aput-byte v3, v0, v1

    const/16 v1, 0xc0

    .line 153
    aput-byte v3, v0, v1

    const/16 v1, 0xc1

    aput-byte v3, v0, v1

    const/16 v1, 0xc2

    aput-byte v3, v0, v1

    const/16 v1, 0xc3

    aput-byte v3, v0, v1

    const/16 v1, 0xc4

    aput-byte v3, v0, v1

    const/16 v1, 0xc5

    aput-byte v3, v0, v1

    const/16 v1, 0xc6

    aput-byte v3, v0, v1

    const/16 v1, 0xc7

    aput-byte v3, v0, v1

    const/16 v1, 0xc8

    aput-byte v3, v0, v1

    const/16 v1, 0xc9

    aput-byte v3, v0, v1

    const/16 v1, 0xca

    aput-byte v3, v0, v1

    const/16 v1, 0xcb

    aput-byte v3, v0, v1

    const/16 v1, 0xcc

    aput-byte v3, v0, v1

    const/16 v1, 0xcd

    .line 154
    aput-byte v3, v0, v1

    const/16 v1, 0xce

    aput-byte v3, v0, v1

    const/16 v1, 0xcf

    aput-byte v3, v0, v1

    const/16 v1, 0xd0

    aput-byte v3, v0, v1

    const/16 v1, 0xd1

    aput-byte v3, v0, v1

    const/16 v1, 0xd2

    aput-byte v3, v0, v1

    const/16 v1, 0xd3

    aput-byte v3, v0, v1

    const/16 v1, 0xd4

    aput-byte v3, v0, v1

    const/16 v1, 0xd5

    aput-byte v3, v0, v1

    const/16 v1, 0xd6

    aput-byte v3, v0, v1

    const/16 v1, 0xd7

    aput-byte v3, v0, v1

    const/16 v1, 0xd8

    aput-byte v3, v0, v1

    const/16 v1, 0xd9

    aput-byte v3, v0, v1

    const/16 v1, 0xda

    .line 155
    aput-byte v3, v0, v1

    const/16 v1, 0xdb

    aput-byte v3, v0, v1

    const/16 v1, 0xdc

    aput-byte v3, v0, v1

    const/16 v1, 0xdd

    aput-byte v3, v0, v1

    const/16 v1, 0xde

    aput-byte v3, v0, v1

    const/16 v1, 0xdf

    aput-byte v3, v0, v1

    const/16 v1, 0xe0

    aput-byte v3, v0, v1

    const/16 v1, 0xe1

    aput-byte v3, v0, v1

    const/16 v1, 0xe2

    aput-byte v3, v0, v1

    const/16 v1, 0xe3

    aput-byte v3, v0, v1

    const/16 v1, 0xe4

    aput-byte v3, v0, v1

    const/16 v1, 0xe5

    aput-byte v3, v0, v1

    const/16 v1, 0xe6

    aput-byte v3, v0, v1

    const/16 v1, 0xe7

    .line 156
    aput-byte v3, v0, v1

    const/16 v1, 0xe8

    aput-byte v3, v0, v1

    const/16 v1, 0xe9

    aput-byte v3, v0, v1

    const/16 v1, 0xea

    aput-byte v3, v0, v1

    const/16 v1, 0xeb

    aput-byte v3, v0, v1

    const/16 v1, 0xec

    aput-byte v3, v0, v1

    const/16 v1, 0xed

    aput-byte v3, v0, v1

    const/16 v1, 0xee

    aput-byte v3, v0, v1

    const/16 v1, 0xef

    aput-byte v3, v0, v1

    const/16 v1, 0xf0

    aput-byte v3, v0, v1

    const/16 v1, 0xf1

    aput-byte v3, v0, v1

    const/16 v1, 0xf2

    aput-byte v3, v0, v1

    const/16 v1, 0xf3

    aput-byte v3, v0, v1

    const/16 v1, 0xf4

    .line 157
    aput-byte v3, v0, v1

    const/16 v1, 0xf5

    aput-byte v3, v0, v1

    const/16 v1, 0xf6

    aput-byte v3, v0, v1

    const/16 v1, 0xf7

    aput-byte v3, v0, v1

    const/16 v1, 0xf8

    aput-byte v3, v0, v1

    const/16 v1, 0xf9

    aput-byte v3, v0, v1

    const/16 v1, 0xfa

    aput-byte v3, v0, v1

    const/16 v1, 0xfb

    aput-byte v3, v0, v1

    const/16 v1, 0xfc

    aput-byte v3, v0, v1

    const/16 v1, 0xfd

    aput-byte v3, v0, v1

    const/16 v1, 0xfe

    aput-byte v3, v0, v1

    const/16 v1, 0xff

    aput-byte v3, v0, v1

    .line 122
    sput-object v0, Lanywheresoftware/b4a/agraham/encryption/Base64;->_URL_SAFE_DECODABET:[B

    .line 11
    return-void

    .line 50
    nop

    :array_0
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 108
    :array_1
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v0, p0, Lanywheresoftware/b4a/agraham/encryption/Base64;->breaklines:Z

    .line 30
    iput-boolean v0, p0, Lanywheresoftware/b4a/agraham/encryption/Base64;->urlsafe:Z

    .line 33
    const/16 v0, 0x4c

    iput v0, p0, Lanywheresoftware/b4a/agraham/encryption/Base64;->maxlinelength:I

    .line 11
    return-void
.end method

.method private decode4to3([BI[BI)I
    .locals 8
    .parameter "source"
    .parameter "srcOffset"
    .parameter "destination"
    .parameter "destOffset"

    .prologue
    const/16 v5, 0x3d

    const/4 v7, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x1

    .line 236
    if-nez p1, :cond_0

    .line 237
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Source array was null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 239
    :cond_0
    if-nez p3, :cond_1

    .line 240
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Destination array was null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 242
    :cond_1
    if-ltz p2, :cond_2

    add-int/lit8 v2, p2, 0x3

    array-length v3, p1

    if-lt v2, v3, :cond_3

    .line 243
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 244
    const-string v3, "Source array with length %d cannot have offset of %d and still process four bytes."

    new-array v4, v4, [Ljava/lang/Object;

    array-length v5, p1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 243
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 246
    :cond_3
    if-ltz p4, :cond_4

    add-int/lit8 v2, p4, 0x2

    array-length v3, p3

    if-lt v2, v3, :cond_5

    .line 247
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 248
    const-string v3, "Destination array with length %d cannot have offset of %d and still store three bytes."

    new-array v4, v4, [Ljava/lang/Object;

    array-length v5, p3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 247
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 250
    :cond_5
    invoke-direct {p0}, Lanywheresoftware/b4a/agraham/encryption/Base64;->getDecodabet()[B

    move-result-object v0

    .line 252
    .local v0, DECODABET:[B
    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    if-ne v2, v5, :cond_6

    .line 253
    aget-byte v2, p1, p2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x12

    .line 254
    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xc

    .line 253
    or-int v1, v2, v3

    .line 255
    .local v1, outBuff:I
    ushr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p3, p4

    move v2, v6

    .line 277
    :goto_0
    return v2

    .line 259
    .end local v1           #outBuff:I
    :cond_6
    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    if-ne v2, v5, :cond_7

    .line 260
    aget-byte v2, p1, p2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x12

    .line 261
    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xc

    .line 260
    or-int/2addr v2, v3

    .line 262
    add-int/lit8 v3, p2, 0x2

    aget-byte v3, p1, v3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x6

    .line 260
    or-int v1, v2, v3

    .line 263
    .restart local v1       #outBuff:I
    ushr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p3, p4

    .line 264
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    move v2, v4

    .line 265
    goto :goto_0

    .line 269
    .end local v1           #outBuff:I
    :cond_7
    aget-byte v2, p1, p2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x12

    .line 270
    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xc

    .line 269
    or-int/2addr v2, v3

    .line 271
    add-int/lit8 v3, p2, 0x2

    aget-byte v3, p1, v3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x6

    .line 269
    or-int/2addr v2, v3

    .line 272
    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    .line 269
    or-int v1, v2, v3

    .line 273
    .restart local v1       #outBuff:I
    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p3, p4

    .line 274
    add-int/lit8 v2, p4, 0x1

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 275
    add-int/lit8 v2, p4, 0x2

    int-to-byte v3, v1

    aput-byte v3, p3, v2

    .line 277
    const/4 v2, 0x3

    goto :goto_0
.end method

.method private encode3to4([BII[BI)[B
    .locals 6
    .parameter "source"
    .parameter "srcOffset"
    .parameter "numSigBytes"
    .parameter "destination"
    .parameter "destOffset"

    .prologue
    const/16 v5, 0x3d

    const/4 v4, 0x0

    .line 185
    invoke-direct {p0}, Lanywheresoftware/b4a/agraham/encryption/Base64;->getAlphabet()[B

    move-result-object v0

    .line 197
    .local v0, ALPHABET:[B
    if-lez p3, :cond_0

    aget-byte v2, p1, p2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x8

    .line 198
    :goto_0
    const/4 v3, 0x1

    if-le p3, v3, :cond_1

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x10

    .line 197
    :goto_1
    or-int/2addr v2, v3

    .line 199
    const/4 v3, 0x2

    if-le p3, v3, :cond_2

    add-int/lit8 v3, p2, 0x2

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x18

    .line 197
    :goto_2
    or-int v1, v2, v3

    .line 200
    .local v1, inBuff:I
    packed-switch p3, :pswitch_data_0

    .line 224
    :goto_3
    return-object p4

    .end local v1           #inBuff:I
    :cond_0
    move v2, v4

    .line 197
    goto :goto_0

    :cond_1
    move v3, v4

    .line 198
    goto :goto_1

    :cond_2
    move v3, v4

    .line 199
    goto :goto_2

    .line 203
    .restart local v1       #inBuff:I
    :pswitch_0
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p4, p5

    .line 204
    add-int/lit8 v2, p5, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p4, v2

    .line 205
    add-int/lit8 v2, p5, 0x2

    ushr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p4, v2

    .line 206
    add-int/lit8 v2, p5, 0x3

    and-int/lit8 v3, v1, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p4, v2

    goto :goto_3

    .line 210
    :pswitch_1
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p4, p5

    .line 211
    add-int/lit8 v2, p5, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p4, v2

    .line 212
    add-int/lit8 v2, p5, 0x2

    ushr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p4, v2

    .line 213
    add-int/lit8 v2, p5, 0x3

    aput-byte v5, p4, v2

    goto :goto_3

    .line 217
    :pswitch_2
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p4, p5

    .line 218
    add-int/lit8 v2, p5, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p4, v2

    .line 219
    add-int/lit8 v2, p5, 0x2

    aput-byte v5, p4, v2

    .line 220
    add-int/lit8 v2, p5, 0x3

    aput-byte v5, p4, v2

    goto :goto_3

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getAlphabet()[B
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lanywheresoftware/b4a/agraham/encryption/Base64;->urlsafe:Z

    if-eqz v0, :cond_0

    .line 166
    sget-object v0, Lanywheresoftware/b4a/agraham/encryption/Base64;->_URL_SAFE_ALPHABET:[B

    .line 168
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lanywheresoftware/b4a/agraham/encryption/Base64;->_STANDARD_ALPHABET:[B

    goto :goto_0
.end method

.method private final getDecodabet()[B
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lanywheresoftware/b4a/agraham/encryption/Base64;->urlsafe:Z

    if-eqz v0, :cond_0

    .line 173
    sget-object v0, Lanywheresoftware/b4a/agraham/encryption/Base64;->_URL_SAFE_DECODABET:[B

    .line 175
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lanywheresoftware/b4a/agraham/encryption/Base64;->_STANDARD_DECODABET:[B

    goto :goto_0
.end method


# virtual methods
.method public DecodeBtoB([BII)[B
    .locals 20
    .parameter "b64bytes"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 290
    const/4 v15, 0x4

    move/from16 v0, p3

    move v1, v15

    if-ge v0, v1, :cond_0

    .line 292
    new-instance v15, Ljava/lang/RuntimeException;

    .line 293
    const-string v16, "Base64-encoded string must have at least four characters!"

    .line 292
    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 295
    :cond_0
    invoke-direct/range {p0 .. p0}, Lanywheresoftware/b4a/agraham/encryption/Base64;->getDecodabet()[B

    move-result-object v5

    .line 296
    .local v5, DECODABET:[B
    mul-int/lit8 v15, p3, 0x3

    div-int/lit8 v10, v15, 0x4

    .line 297
    .local v10, len34:I
    new-array v12, v10, [B

    .line 298
    .local v12, outBuff:[B
    const/4 v13, 0x0

    .line 299
    .local v13, outBuffPosn:I
    const/4 v15, 0x4

    new-array v6, v15, [B

    .line 300
    .local v6, b4:[B
    const/4 v7, 0x0

    .line 301
    .local v7, b4Posn:I
    const/4 v9, 0x0

    .line 302
    .local v9, i:I
    const/4 v14, 0x0

    .line 304
    .local v14, sbiDecode:B
    move/from16 v9, p2

    move v8, v7

    .end local v7           #b4Posn:I
    .local v8, b4Posn:I
    :goto_0
    add-int v15, p2, p3

    if-lt v9, v15, :cond_2

    move v7, v8

    .line 330
    .end local v8           #b4Posn:I
    .restart local v7       #b4Posn:I
    :cond_1
    new-array v11, v13, [B

    .line 331
    .local v11, out:[B
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v0, v12

    move v1, v15

    move-object v2, v11

    move/from16 v3, v16

    move v4, v13

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 332
    return-object v11

    .line 306
    .end local v7           #b4Posn:I
    .end local v11           #out:[B
    .restart local v8       #b4Posn:I
    :cond_2
    aget-byte v15, p1, v9

    and-int/lit16 v15, v15, 0xff

    aget-byte v14, v5, v15

    .line 310
    const/4 v15, -0x5

    if-lt v14, v15, :cond_4

    .line 311
    const/4 v15, -0x1

    if-lt v14, v15, :cond_5

    .line 312
    add-int/lit8 v7, v8, 0x1

    .end local v8           #b4Posn:I
    .restart local v7       #b4Posn:I
    aget-byte v15, p1, v9

    aput-byte v15, v6, v8

    .line 313
    const/4 v15, 0x3

    if-le v7, v15, :cond_3

    .line 314
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v15

    move-object v3, v12

    move v4, v13

    invoke-direct {v0, v1, v2, v3, v4}, Lanywheresoftware/b4a/agraham/encryption/Base64;->decode4to3([BI[BI)I

    move-result v15

    add-int/2addr v13, v15

    .line 315
    const/4 v7, 0x0

    .line 317
    aget-byte v15, p1, v9

    const/16 v16, 0x3d

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_1

    .line 304
    :cond_3
    :goto_1
    add-int/lit8 v9, v9, 0x1

    move v8, v7

    .end local v7           #b4Posn:I
    .restart local v8       #b4Posn:I
    goto :goto_0

    .line 325
    :cond_4
    new-instance v15, Ljava/lang/RuntimeException;

    .line 326
    const-string v16, "Bad Base64 input character decimal %d in array position %d"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-byte v19, p1, v9

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    .line 325
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_5
    move v7, v8

    .end local v8           #b4Posn:I
    .restart local v7       #b4Posn:I
    goto :goto_1
.end method

.method public DecodeBtoS([BIILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "b64bytes"
    .parameter "offset"
    .parameter "length"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 344
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lanywheresoftware/b4a/agraham/encryption/Base64;->DecodeBtoB([BII)[B

    move-result-object v1

    invoke-direct {v0, v1, p4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public DecodeStoB(Ljava/lang/String;)[B
    .locals 3
    .parameter "b64string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 354
    const-string v1, "US-ASCII"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 355
    .local v0, bytes:[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lanywheresoftware/b4a/agraham/encryption/Base64;->DecodeBtoB([BII)[B

    move-result-object v0

    .line 356
    return-object v0
.end method

.method public DecodeStoS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "b64string"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 367
    const-string v1, "US-ASCII"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 368
    .local v0, bytes:[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lanywheresoftware/b4a/agraham/encryption/Base64;->DecodeBtoB([BII)[B

    move-result-object v0

    .line 369
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public EncodeBtoB([BII)[B
    .locals 12
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v11, 0x0

    .line 379
    div-int/lit8 v0, p3, 0x3

    mul-int/lit8 v0, v0, 0x4

    rem-int/lit8 v1, p3, 0x3

    if-lez v1, :cond_2

    const/4 v1, 0x4

    :goto_0
    add-int v7, v0, v1

    .line 380
    .local v7, encLen:I
    iget-boolean v0, p0, Lanywheresoftware/b4a/agraham/encryption/Base64;->breaklines:Z

    if-eqz v0, :cond_0

    .line 381
    iget v0, p0, Lanywheresoftware/b4a/agraham/encryption/Base64;->maxlinelength:I

    div-int v0, v7, v0

    add-int/2addr v7, v0

    .line 383
    :cond_0
    new-array v4, v7, [B

    .line 384
    .local v4, outBuff:[B
    const/4 v6, 0x0

    .line 385
    .local v6, d:I
    const/4 v5, 0x0

    .line 386
    .local v5, e:I
    const/4 v0, 0x2

    sub-int v9, p3, v0

    .line 387
    .local v9, len2:I
    const/4 v10, 0x0

    .line 388
    .local v10, lineLength:I
    :goto_1
    if-lt v6, v9, :cond_3

    .line 398
    if-ge v6, p3, :cond_1

    .line 399
    add-int v2, v6, p2

    sub-int v3, p3, v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lanywheresoftware/b4a/agraham/encryption/Base64;->encode3to4([BII[BI)[B

    .line 400
    add-int/lit8 v5, v5, 0x4

    .line 403
    :cond_1
    array-length v0, v4

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-gt v5, v0, :cond_5

    .line 408
    new-array v8, v5, [B

    .line 409
    .local v8, finalOut:[B
    invoke-static {v4, v11, v8, v11, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v8

    .line 412
    .end local v8           #finalOut:[B
    :goto_2
    return-object v0

    .end local v4           #outBuff:[B
    .end local v5           #e:I
    .end local v6           #d:I
    .end local v7           #encLen:I
    .end local v9           #len2:I
    .end local v10           #lineLength:I
    :cond_2
    move v1, v11

    .line 379
    goto :goto_0

    .line 389
    .restart local v4       #outBuff:[B
    .restart local v5       #e:I
    .restart local v6       #d:I
    .restart local v7       #encLen:I
    .restart local v9       #len2:I
    .restart local v10       #lineLength:I
    :cond_3
    add-int v2, v6, p2

    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lanywheresoftware/b4a/agraham/encryption/Base64;->encode3to4([BII[BI)[B

    .line 390
    add-int/lit8 v10, v10, 0x4

    .line 391
    iget-boolean v0, p0, Lanywheresoftware/b4a/agraham/encryption/Base64;->breaklines:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lanywheresoftware/b4a/agraham/encryption/Base64;->maxlinelength:I

    if-lt v10, v0, :cond_4

    .line 393
    add-int/lit8 v0, v5, 0x4

    const/16 v1, 0xa

    aput-byte v1, v4, v0

    .line 394
    add-int/lit8 v5, v5, 0x1

    .line 395
    const/4 v10, 0x0

    .line 388
    :cond_4
    add-int/lit8 v6, v6, 0x3

    add-int/lit8 v5, v5, 0x4

    goto :goto_1

    :cond_5
    move-object v0, v4

    .line 412
    goto :goto_2
.end method

.method public EncodeBtoS([BII)Ljava/lang/String;
    .locals 3
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 421
    invoke-virtual {p0, p1, p2, p3}, Lanywheresoftware/b4a/agraham/encryption/Base64;->EncodeBtoB([BII)[B

    move-result-object v0

    .line 422
    .local v0, encoded:[B
    new-instance v1, Ljava/lang/String;

    const-string v2, "US-ASCII"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public EncodeStoB(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3
    .parameter "data"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 433
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 434
    .local v0, encoded:[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lanywheresoftware/b4a/agraham/encryption/Base64;->EncodeBtoB([BII)[B

    move-result-object v0

    .line 435
    return-object v0
.end method

.method public EncodeStoS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "data"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 444
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lanywheresoftware/b4a/agraham/encryption/Base64;->EncodeStoB(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public getBreakLines()Z
    .locals 1

    .prologue
    .line 456
    iget-boolean v0, p0, Lanywheresoftware/b4a/agraham/encryption/Base64;->breaklines:Z

    return v0
.end method

.method public getLineLength()I
    .locals 1

    .prologue
    .line 477
    iget v0, p0, Lanywheresoftware/b4a/agraham/encryption/Base64;->maxlinelength:I

    return v0
.end method

.method public getUrlSafe()Z
    .locals 1

    .prologue
    .line 491
    iget-boolean v0, p0, Lanywheresoftware/b4a/agraham/encryption/Base64;->urlsafe:Z

    return v0
.end method

.method public getVersion()D
    .locals 2

    .prologue
    .line 468
    const-wide/high16 v0, 0x3ff0

    return-wide v0
.end method

.method public setBreakLines(Z)V
    .locals 0
    .parameter "breaklines"

    .prologue
    .line 460
    iput-boolean p1, p0, Lanywheresoftware/b4a/agraham/encryption/Base64;->breaklines:Z

    .line 461
    return-void
.end method

.method public setLineLength(I)V
    .locals 0
    .parameter "linelength"

    .prologue
    .line 481
    iput p1, p0, Lanywheresoftware/b4a/agraham/encryption/Base64;->maxlinelength:I

    .line 482
    return-void
.end method

.method public setUrlSafe(Z)V
    .locals 0
    .parameter "urlsafe"

    .prologue
    .line 495
    iput-boolean p1, p0, Lanywheresoftware/b4a/agraham/encryption/Base64;->urlsafe:Z

    .line 496
    return-void
.end method
