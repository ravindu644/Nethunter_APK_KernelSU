.class public Lcom/offsec/nhterm/frontend/session/terminal/BasicSessionCallback;
.super Ljava/lang/Object;
.source "term-basic.kt"

# interfaces
.implements Lcom/offsec/nhterm/backend/TerminalSession$SessionChangedCallback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u001c\u0010\u000c\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0012\u0010\u000f\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010\u0010\u001a\u00020\t2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010\u0012\u001a\u00020\t2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010\u0014\u001a\u00020\t2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000bH\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0004\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/offsec/nhterm/frontend/session/terminal/BasicSessionCallback;",
        "Lcom/offsec/nhterm/backend/TerminalSession$SessionChangedCallback;",
        "terminalView",
        "Lcom/offsec/nhterm/frontend/session/view/TerminalView;",
        "(Lcom/offsec/nhterm/frontend/session/view/TerminalView;)V",
        "getTerminalView",
        "()Lcom/offsec/nhterm/frontend/session/view/TerminalView;",
        "setTerminalView",
        "onBell",
        "",
        "session",
        "Lcom/offsec/nhterm/backend/TerminalSession;",
        "onClipboardText",
        "text",
        "",
        "onColorsChanged",
        "onSessionFinished",
        "finishedSession",
        "onTextChanged",
        "changedSession",
        "onTitleChanged",
        "nhterm_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private terminalView:Lcom/offsec/nhterm/frontend/session/view/TerminalView;


# direct methods
.method public constructor <init>(Lcom/offsec/nhterm/frontend/session/view/TerminalView;)V
    .locals 1

    const-string v0, "terminalView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nhterm/frontend/session/terminal/BasicSessionCallback;->terminalView:Lcom/offsec/nhterm/frontend/session/view/TerminalView;

    return-void
.end method


# virtual methods
.method public final getTerminalView()Lcom/offsec/nhterm/frontend/session/view/TerminalView;
    .locals 1

    iget-object v0, p0, Lcom/offsec/nhterm/frontend/session/terminal/BasicSessionCallback;->terminalView:Lcom/offsec/nhterm/frontend/session/view/TerminalView;

    return-object v0
.end method

.method public onBell(Lcom/offsec/nhterm/backend/TerminalSession;)V
    .locals 0

    return-void
.end method

.method public onClipboardText(Lcom/offsec/nhterm/backend/TerminalSession;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onColorsChanged(Lcom/offsec/nhterm/backend/TerminalSession;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/offsec/nhterm/frontend/session/terminal/BasicSessionCallback;->terminalView:Lcom/offsec/nhterm/frontend/session/view/TerminalView;

    invoke-virtual {p1}, Lcom/offsec/nhterm/frontend/session/view/TerminalView;->onScreenUpdated()V

    :cond_0
    return-void
.end method

.method public onSessionFinished(Lcom/offsec/nhterm/backend/TerminalSession;)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Lcom/offsec/nhterm/backend/TerminalSession;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/offsec/nhterm/frontend/session/terminal/BasicSessionCallback;->terminalView:Lcom/offsec/nhterm/frontend/session/view/TerminalView;

    invoke-virtual {p1}, Lcom/offsec/nhterm/frontend/session/view/TerminalView;->onScreenUpdated()V

    :cond_0
    return-void
.end method

.method public onTitleChanged(Lcom/offsec/nhterm/backend/TerminalSession;)V
    .locals 0

    return-void
.end method

.method public final setTerminalView(Lcom/offsec/nhterm/frontend/session/view/TerminalView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/offsec/nhterm/frontend/session/terminal/BasicSessionCallback;->terminalView:Lcom/offsec/nhterm/frontend/session/view/TerminalView;

    return-void
.end method
