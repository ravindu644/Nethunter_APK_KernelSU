.class public final Lcom/offsec/nhterm/frontend/session/view/extrakey/ArrowButton;
.super Lcom/offsec/nhterm/frontend/session/view/extrakey/RepeatableButton;
.source "buttons.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/offsec/nhterm/frontend/session/view/extrakey/ArrowButton;",
        "Lcom/offsec/nhterm/frontend/session/view/extrakey/RepeatableButton;",
        "arrowText",
        "",
        "(Ljava/lang/String;)V",
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


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "arrowText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/offsec/nhterm/frontend/session/view/extrakey/RepeatableButton;-><init>(Ljava/lang/String;)V

    return-void
.end method
