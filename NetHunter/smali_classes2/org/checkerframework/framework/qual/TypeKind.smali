.class public final enum Lorg/checkerframework/framework/qual/TypeKind;
.super Ljava/lang/Enum;
.source "TypeKind.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/framework/qual/TypeKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum ARRAY:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum BOOLEAN:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum BYTE:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum CHAR:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum DECLARED:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum DOUBLE:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum ERROR:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum EXECUTABLE:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum FLOAT:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum INT:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum INTERSECTION:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum LONG:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum NONE:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum NULL:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum OTHER:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum PACKAGE:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum SHORT:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum TYPEVAR:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum UNION:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum VOID:Lorg/checkerframework/framework/qual/TypeKind;

.field public static final enum WILDCARD:Lorg/checkerframework/framework/qual/TypeKind;


# direct methods
.method private static synthetic $values()[Lorg/checkerframework/framework/qual/TypeKind;
    .locals 3

    const/16 v0, 0x15

    new-array v0, v0, [Lorg/checkerframework/framework/qual/TypeKind;

    const/4 v1, 0x0

    sget-object v2, Lorg/checkerframework/framework/qual/TypeKind;->BOOLEAN:Lorg/checkerframework/framework/qual/TypeKind;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/checkerframework/framework/qual/TypeKind;->BYTE:Lorg/checkerframework/framework/qual/TypeKind;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/checkerframework/framework/qual/TypeKind;->SHORT:Lorg/checkerframework/framework/qual/TypeKind;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/checkerframework/framework/qual/TypeKind;->INT:Lorg/checkerframework/framework/qual/TypeKind;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/checkerframework/framework/qual/TypeKind;->LONG:Lorg/checkerframework/framework/qual/TypeKind;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/checkerframework/framework/qual/TypeKind;->CHAR:Lorg/checkerframework/framework/qual/TypeKind;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/checkerframework/framework/qual/TypeKind;->FLOAT:Lorg/checkerframework/framework/qual/TypeKind;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/checkerframework/framework/qual/TypeKind;->DOUBLE:Lorg/checkerframework/framework/qual/TypeKind;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/checkerframework/framework/qual/TypeKind;->VOID:Lorg/checkerframework/framework/qual/TypeKind;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/checkerframework/framework/qual/TypeKind;->NONE:Lorg/checkerframework/framework/qual/TypeKind;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/checkerframework/framework/qual/TypeKind;->NULL:Lorg/checkerframework/framework/qual/TypeKind;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/checkerframework/framework/qual/TypeKind;->ARRAY:Lorg/checkerframework/framework/qual/TypeKind;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/checkerframework/framework/qual/TypeKind;->DECLARED:Lorg/checkerframework/framework/qual/TypeKind;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/checkerframework/framework/qual/TypeKind;->ERROR:Lorg/checkerframework/framework/qual/TypeKind;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/checkerframework/framework/qual/TypeKind;->TYPEVAR:Lorg/checkerframework/framework/qual/TypeKind;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/checkerframework/framework/qual/TypeKind;->WILDCARD:Lorg/checkerframework/framework/qual/TypeKind;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/checkerframework/framework/qual/TypeKind;->PACKAGE:Lorg/checkerframework/framework/qual/TypeKind;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/checkerframework/framework/qual/TypeKind;->EXECUTABLE:Lorg/checkerframework/framework/qual/TypeKind;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/checkerframework/framework/qual/TypeKind;->OTHER:Lorg/checkerframework/framework/qual/TypeKind;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/checkerframework/framework/qual/TypeKind;->UNION:Lorg/checkerframework/framework/qual/TypeKind;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lorg/checkerframework/framework/qual/TypeKind;->INTERSECTION:Lorg/checkerframework/framework/qual/TypeKind;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/checkerframework/framework/qual/TypeKind;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeKind;->BOOLEAN:Lorg/checkerframework/framework/qual/TypeKind;

    new-instance v0, Lorg/checkerframework/framework/qual/TypeKind;

    const-string v1, "BYTE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeKind;->BYTE:Lorg/checkerframework/framework/qual/TypeKind;

    new-instance v0, Lorg/checkerframework/framework/qual/TypeKind;

    const-string v1, "SHORT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeKind;->SHORT:Lorg/checkerframework/framework/qual/TypeKind;

    new-instance v0, Lorg/checkerframework/framework/qual/TypeKind;

    const-string v1, "INT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeKind;->INT:Lorg/checkerframework/framework/qual/TypeKind;

    new-instance v0, Lorg/checkerframework/framework/qual/TypeKind;

    const-string v1, "LONG"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeKind;->LONG:Lorg/checkerframework/framework/qual/TypeKind;

    new-instance v0, Lorg/checkerframework/framework/qual/TypeKind;

    const-string v1, "CHAR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeKind;->CHAR:Lorg/checkerframework/framework/qual/TypeKind;

    new-instance v0, Lorg/checkerframework/framework/qual/TypeKind;

    const-string v1, "FLOAT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeKind;->FLOAT:Lorg/checkerframework/framework/qual/TypeKind;

    new-instance v0, Lorg/checkerframework/framework/qual/TypeKind;

    const-string v1, "DOUBLE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeKind;->DOUBLE:Lorg/checkerframework/framework/qual/TypeKind;

    new-instance v0, Lorg/checkerframework/framework/qual/TypeKind;

    const-string v1, "VOID"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeKind;->VOID:Lorg/checkerframework/framework/qual/TypeKind;

    new-instance v0, Lorg/checkerframework/framework/qual/TypeKind;

    const-string v1, "NONE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeKind;->NONE:Lorg/checkerframework/framework/qual/TypeKind;

    new-instance v0, Lorg/checkerframework/framework/qual/TypeKind;

    const-string v1, "NULL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeKind;->NULL:Lorg/checkerframework/framework/qual/TypeKind;

    new-instance v0, Lorg/checkerframework/framework/qual/TypeKind;

    const-string v1, "ARRAY"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeKind;->ARRAY:Lorg/checkerframework/framework/qual/TypeKind;

    new-instance v0, Lorg/checkerframework/framework/qual/TypeKind;

    const-string v1, "DECLARED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeKind;->DECLARED:Lorg/checkerframework/framework/qual/TypeKind;

    new-instance v0, Lorg/checkerframework/framework/qual/TypeKind;

    const-string v1, "ERROR"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeKind;->ERROR:Lorg/checkerframework/framework/qual/TypeKind;

    new-instance v0, Lorg/checkerframework/framework/qual/TypeKind;

    const-string v1, "TYPEVAR"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeKind;->TYPEVAR:Lorg/checkerframework/framework/qual/TypeKind;

    new-instance v0, Lorg/checkerframework/framework/qual/TypeKind;

    const-string v1, "WILDCARD"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeKind;->WILDCARD:Lorg/checkerframework/framework/qual/TypeKind;

    new-instance v0, Lorg/checkerframework/framework/qual/TypeKind;

    const-string v1, "PACKAGE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeKind;->PACKAGE:Lorg/checkerframework/framework/qual/TypeKind;

    new-instance v0, Lorg/checkerframework/framework/qual/TypeKind;

    const-string v1, "EXECUTABLE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeKind;->EXECUTABLE:Lorg/checkerframework/framework/qual/TypeKind;

    new-instance v0, Lorg/checkerframework/framework/qual/TypeKind;

    const-string v1, "OTHER"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeKind;->OTHER:Lorg/checkerframework/framework/qual/TypeKind;

    new-instance v0, Lorg/checkerframework/framework/qual/TypeKind;

    const-string v1, "UNION"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeKind;->UNION:Lorg/checkerframework/framework/qual/TypeKind;

    new-instance v0, Lorg/checkerframework/framework/qual/TypeKind;

    const-string v1, "INTERSECTION"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/qual/TypeKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeKind;->INTERSECTION:Lorg/checkerframework/framework/qual/TypeKind;

    invoke-static {}, Lorg/checkerframework/framework/qual/TypeKind;->$values()[Lorg/checkerframework/framework/qual/TypeKind;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/framework/qual/TypeKind;->$VALUES:[Lorg/checkerframework/framework/qual/TypeKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/framework/qual/TypeKind;
    .locals 1

    const-class v0, Lorg/checkerframework/framework/qual/TypeKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/checkerframework/framework/qual/TypeKind;

    return-object p0
.end method

.method public static values()[Lorg/checkerframework/framework/qual/TypeKind;
    .locals 1

    sget-object v0, Lorg/checkerframework/framework/qual/TypeKind;->$VALUES:[Lorg/checkerframework/framework/qual/TypeKind;

    invoke-virtual {v0}, [Lorg/checkerframework/framework/qual/TypeKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/framework/qual/TypeKind;

    return-object v0
.end method
