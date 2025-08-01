.class Lcom/hijacker/AP$2$1$1;
.super Ljava/lang/Object;
.source "AP.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/AP$2$1;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/hijacker/AP$2$1;


# direct methods
.method constructor <init>(Lcom/hijacker/AP$2$1;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/AP$2$1$1;->this$2:Lcom/hijacker/AP$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/hijacker/AP$2$1$1;->this$2:Lcom/hijacker/AP$2$1;

    iget-object v0, v0, Lcom/hijacker/AP$2$1;->this$1:Lcom/hijacker/AP$2;

    iget-object v0, v0, Lcom/hijacker/AP$2;->this$0:Lcom/hijacker/AP;

    iget-object v0, v0, Lcom/hijacker/AP;->clients:Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hijacker/ST;

    invoke-virtual {p1}, Lcom/hijacker/ST;->disconnect()V

    const/4 p1, 0x1

    return p1
.end method
