.class final Lcom/jetradarmobile/snowfall/SnowfallView$UpdateSnowflakesThread;
.super Landroid/os/HandlerThread;
.source "SnowfallView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jetradarmobile/snowfall/SnowfallView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UpdateSnowflakesThread"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/jetradarmobile/snowfall/SnowfallView$UpdateSnowflakesThread;",
        "Landroid/os/HandlerThread;",
        "()V",
        "handler",
        "Landroid/os/Handler;",
        "getHandler",
        "()Landroid/os/Handler;",
        "snowfall_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "SnowflakesComputations"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/jetradarmobile/snowfall/SnowfallView$UpdateSnowflakesThread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/jetradarmobile/snowfall/SnowfallView$UpdateSnowflakesThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/jetradarmobile/snowfall/SnowfallView$UpdateSnowflakesThread;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/jetradarmobile/snowfall/SnowfallView$UpdateSnowflakesThread;->handler:Landroid/os/Handler;

    return-object v0
.end method
