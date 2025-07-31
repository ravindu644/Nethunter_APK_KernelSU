.class public final enum Lcom/offsec/nethunter/AudioPlayState;
.super Ljava/lang/Enum;
.source "AudioPlayState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/offsec/nethunter/AudioPlayState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/offsec/nethunter/AudioPlayState;

.field public static final enum BUFFERING:Lcom/offsec/nethunter/AudioPlayState;

.field public static final enum STARTED:Lcom/offsec/nethunter/AudioPlayState;

.field public static final enum STARTING:Lcom/offsec/nethunter/AudioPlayState;

.field public static final enum STOPPED:Lcom/offsec/nethunter/AudioPlayState;

.field public static final enum STOPPING:Lcom/offsec/nethunter/AudioPlayState;


# instance fields
.field private final isActive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/offsec/nethunter/AudioPlayState;

    const-string v1, "STOPPED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/offsec/nethunter/AudioPlayState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/offsec/nethunter/AudioPlayState;->STOPPED:Lcom/offsec/nethunter/AudioPlayState;

    new-instance v1, Lcom/offsec/nethunter/AudioPlayState;

    const-string v3, "STARTING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/offsec/nethunter/AudioPlayState;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/offsec/nethunter/AudioPlayState;->STARTING:Lcom/offsec/nethunter/AudioPlayState;

    new-instance v3, Lcom/offsec/nethunter/AudioPlayState;

    const-string v5, "BUFFERING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/offsec/nethunter/AudioPlayState;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/offsec/nethunter/AudioPlayState;->BUFFERING:Lcom/offsec/nethunter/AudioPlayState;

    new-instance v5, Lcom/offsec/nethunter/AudioPlayState;

    const-string v7, "STARTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v4}, Lcom/offsec/nethunter/AudioPlayState;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lcom/offsec/nethunter/AudioPlayState;->STARTED:Lcom/offsec/nethunter/AudioPlayState;

    new-instance v7, Lcom/offsec/nethunter/AudioPlayState;

    const-string v9, "STOPPING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v2}, Lcom/offsec/nethunter/AudioPlayState;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Lcom/offsec/nethunter/AudioPlayState;->STOPPING:Lcom/offsec/nethunter/AudioPlayState;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/offsec/nethunter/AudioPlayState;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/offsec/nethunter/AudioPlayState;->$VALUES:[Lcom/offsec/nethunter/AudioPlayState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/offsec/nethunter/AudioPlayState;->isActive:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/offsec/nethunter/AudioPlayState;
    .locals 1

    const-class v0, Lcom/offsec/nethunter/AudioPlayState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/offsec/nethunter/AudioPlayState;

    return-object p0
.end method

.method public static values()[Lcom/offsec/nethunter/AudioPlayState;
    .locals 1

    sget-object v0, Lcom/offsec/nethunter/AudioPlayState;->$VALUES:[Lcom/offsec/nethunter/AudioPlayState;

    invoke-virtual {v0}, [Lcom/offsec/nethunter/AudioPlayState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/offsec/nethunter/AudioPlayState;

    return-object v0
.end method


# virtual methods
.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/offsec/nethunter/AudioPlayState;->isActive:Z

    return v0
.end method
