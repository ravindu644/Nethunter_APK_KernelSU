.class final enum Lcom/llamalab/safs/internal/AbstractWatchKey$State;
.super Ljava/lang/Enum;
.source "AbstractWatchKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/llamalab/safs/internal/AbstractWatchKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/llamalab/safs/internal/AbstractWatchKey$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/llamalab/safs/internal/AbstractWatchKey$State;

.field public static final enum READY:Lcom/llamalab/safs/internal/AbstractWatchKey$State;

.field public static final enum SIGNALLED:Lcom/llamalab/safs/internal/AbstractWatchKey$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/llamalab/safs/internal/AbstractWatchKey$State;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/llamalab/safs/internal/AbstractWatchKey$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/llamalab/safs/internal/AbstractWatchKey$State;->READY:Lcom/llamalab/safs/internal/AbstractWatchKey$State;

    new-instance v1, Lcom/llamalab/safs/internal/AbstractWatchKey$State;

    const-string v3, "SIGNALLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/llamalab/safs/internal/AbstractWatchKey$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/llamalab/safs/internal/AbstractWatchKey$State;->SIGNALLED:Lcom/llamalab/safs/internal/AbstractWatchKey$State;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/llamalab/safs/internal/AbstractWatchKey$State;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/llamalab/safs/internal/AbstractWatchKey$State;->$VALUES:[Lcom/llamalab/safs/internal/AbstractWatchKey$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/llamalab/safs/internal/AbstractWatchKey$State;
    .locals 1

    const-class v0, Lcom/llamalab/safs/internal/AbstractWatchKey$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/llamalab/safs/internal/AbstractWatchKey$State;

    return-object p0
.end method

.method public static values()[Lcom/llamalab/safs/internal/AbstractWatchKey$State;
    .locals 1

    sget-object v0, Lcom/llamalab/safs/internal/AbstractWatchKey$State;->$VALUES:[Lcom/llamalab/safs/internal/AbstractWatchKey$State;

    invoke-virtual {v0}, [Lcom/llamalab/safs/internal/AbstractWatchKey$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/llamalab/safs/internal/AbstractWatchKey$State;

    return-object v0
.end method
