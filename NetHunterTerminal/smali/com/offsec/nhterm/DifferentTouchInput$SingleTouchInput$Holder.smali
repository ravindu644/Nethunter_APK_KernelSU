.class Lcom/offsec/nhterm/DifferentTouchInput$SingleTouchInput$Holder;
.super Ljava/lang/Object;
.source "Video.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nhterm/DifferentTouchInput$SingleTouchInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final sInstance:Lcom/offsec/nhterm/DifferentTouchInput$SingleTouchInput;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/offsec/nhterm/DifferentTouchInput$SingleTouchInput;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/offsec/nhterm/DifferentTouchInput$SingleTouchInput;-><init>(Lcom/offsec/nhterm/DifferentTouchInput$1;)V

    sput-object v0, Lcom/offsec/nhterm/DifferentTouchInput$SingleTouchInput$Holder;->sInstance:Lcom/offsec/nhterm/DifferentTouchInput$SingleTouchInput;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Lcom/offsec/nhterm/DifferentTouchInput$SingleTouchInput;
    .locals 1

    sget-object v0, Lcom/offsec/nhterm/DifferentTouchInput$SingleTouchInput$Holder;->sInstance:Lcom/offsec/nhterm/DifferentTouchInput$SingleTouchInput;

    return-object v0
.end method
