.class public interface abstract Lio/neolang/frontend/IVisitorCallback;
.super Ljava/lang/Object;
.source "abstract-visitors.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0008\u0010\u0008\u001a\u00020\u0005H&J\u0008\u0010\t\u001a\u00020\u0005H&J\u0008\u0010\n\u001a\u00020\u0005H&\u00a8\u0006\u000b"
    }
    d2 = {
        "Lio/neolang/frontend/IVisitorCallback;",
        "",
        "getCurrentContext",
        "Lio/neolang/runtime/NeoLangContext;",
        "onEnterContext",
        "",
        "contextName",
        "",
        "onExitContext",
        "onFinish",
        "onStart",
        "NeoLang"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getCurrentContext()Lio/neolang/runtime/NeoLangContext;
.end method

.method public abstract onEnterContext(Ljava/lang/String;)V
.end method

.method public abstract onExitContext()V
.end method

.method public abstract onFinish()V
.end method

.method public abstract onStart()V
.end method
