.class public final Lkotlinx/coroutines/android/HandlerContext$invokeOnTimeout$1;
.super Ljava/lang/Object;
.source "HandlerDispatcher.kt"

# interfaces
.implements Lkotlinx/coroutines/DisposableHandle;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/android/HandlerContext;->invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/DisposableHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "kotlinx/coroutines/android/HandlerContext$invokeOnTimeout$1",
        "Lkotlinx/coroutines/DisposableHandle;",
        "dispose",
        "",
        "kotlinx-coroutines-android"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $block:Ljava/lang/Runnable;

.field final synthetic this$0:Lkotlinx/coroutines/android/HandlerContext;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/android/HandlerContext;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/android/HandlerContext$invokeOnTimeout$1;->this$0:Lkotlinx/coroutines/android/HandlerContext;

    iput-object p2, p0, Lkotlinx/coroutines/android/HandlerContext$invokeOnTimeout$1;->$block:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/android/HandlerContext$invokeOnTimeout$1;->this$0:Lkotlinx/coroutines/android/HandlerContext;

    invoke-static {v0}, Lkotlinx/coroutines/android/HandlerContext;->access$getHandler$p(Lkotlinx/coroutines/android/HandlerContext;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/android/HandlerContext$invokeOnTimeout$1;->$block:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
