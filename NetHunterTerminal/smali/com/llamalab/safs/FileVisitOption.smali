.class public final enum Lcom/llamalab/safs/FileVisitOption;
.super Ljava/lang/Enum;
.source "FileVisitOption.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/llamalab/safs/FileVisitOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/llamalab/safs/FileVisitOption;

.field public static final enum FOLLOW_LINKS:Lcom/llamalab/safs/FileVisitOption;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/llamalab/safs/FileVisitOption;

    const-string v1, "FOLLOW_LINKS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/llamalab/safs/FileVisitOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/llamalab/safs/FileVisitOption;->FOLLOW_LINKS:Lcom/llamalab/safs/FileVisitOption;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/llamalab/safs/FileVisitOption;

    aput-object v0, v1, v2

    sput-object v1, Lcom/llamalab/safs/FileVisitOption;->$VALUES:[Lcom/llamalab/safs/FileVisitOption;

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

.method public static valueOf(Ljava/lang/String;)Lcom/llamalab/safs/FileVisitOption;
    .locals 1

    const-class v0, Lcom/llamalab/safs/FileVisitOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/llamalab/safs/FileVisitOption;

    return-object p0
.end method

.method public static values()[Lcom/llamalab/safs/FileVisitOption;
    .locals 1

    sget-object v0, Lcom/llamalab/safs/FileVisitOption;->$VALUES:[Lcom/llamalab/safs/FileVisitOption;

    invoke-virtual {v0}, [Lcom/llamalab/safs/FileVisitOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/llamalab/safs/FileVisitOption;

    return-object v0
.end method
