.class public final enum Ljava8/nio/file/FileVisitOption;
.super Ljava/lang/Enum;
.source "FileVisitOption.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava8/nio/file/FileVisitOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava8/nio/file/FileVisitOption;

.field public static final enum FOLLOW_LINKS:Ljava8/nio/file/FileVisitOption;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava8/nio/file/FileVisitOption;

    const-string v1, "FOLLOW_LINKS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava8/nio/file/FileVisitOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava8/nio/file/FileVisitOption;->FOLLOW_LINKS:Ljava8/nio/file/FileVisitOption;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava8/nio/file/FileVisitOption;

    aput-object v0, v1, v2

    sput-object v1, Ljava8/nio/file/FileVisitOption;->$VALUES:[Ljava8/nio/file/FileVisitOption;

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

.method public static valueOf(Ljava/lang/String;)Ljava8/nio/file/FileVisitOption;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Ljava8/nio/file/FileVisitOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljava8/nio/file/FileVisitOption;

    return-object p0
.end method

.method public static values()[Ljava8/nio/file/FileVisitOption;
    .locals 1

    sget-object v0, Ljava8/nio/file/FileVisitOption;->$VALUES:[Ljava8/nio/file/FileVisitOption;

    invoke-virtual {v0}, [Ljava8/nio/file/FileVisitOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava8/nio/file/FileVisitOption;

    return-object v0
.end method
