.class public final enum Ljava8/nio/file/AccessMode;
.super Ljava/lang/Enum;
.source "AccessMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava8/nio/file/AccessMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava8/nio/file/AccessMode;

.field public static final enum EXECUTE:Ljava8/nio/file/AccessMode;

.field public static final enum READ:Ljava8/nio/file/AccessMode;

.field public static final enum WRITE:Ljava8/nio/file/AccessMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljava8/nio/file/AccessMode;

    const-string v1, "READ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava8/nio/file/AccessMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava8/nio/file/AccessMode;->READ:Ljava8/nio/file/AccessMode;

    new-instance v1, Ljava8/nio/file/AccessMode;

    const-string v3, "WRITE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava8/nio/file/AccessMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljava8/nio/file/AccessMode;->WRITE:Ljava8/nio/file/AccessMode;

    new-instance v3, Ljava8/nio/file/AccessMode;

    const-string v5, "EXECUTE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava8/nio/file/AccessMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ljava8/nio/file/AccessMode;->EXECUTE:Ljava8/nio/file/AccessMode;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava8/nio/file/AccessMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Ljava8/nio/file/AccessMode;->$VALUES:[Ljava8/nio/file/AccessMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava8/nio/file/AccessMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Ljava8/nio/file/AccessMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljava8/nio/file/AccessMode;

    return-object p0
.end method

.method public static values()[Ljava8/nio/file/AccessMode;
    .locals 1

    sget-object v0, Ljava8/nio/file/AccessMode;->$VALUES:[Ljava8/nio/file/AccessMode;

    invoke-virtual {v0}, [Ljava8/nio/file/AccessMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava8/nio/file/AccessMode;

    return-object v0
.end method
