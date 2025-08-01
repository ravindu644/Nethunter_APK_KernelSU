.class Lcom/hijacker/Airodump$4;
.super Ljava/lang/Object;
.source "Airodump.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/Airodump;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, Lcom/hijacker/MainActivity;->menu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hijacker/MainActivity;->menu:Landroid/view/Menu;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f0800a5

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    sget-object v0, Lcom/hijacker/MainActivity;->menu:Landroid/view/Menu;

    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f10016b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method
