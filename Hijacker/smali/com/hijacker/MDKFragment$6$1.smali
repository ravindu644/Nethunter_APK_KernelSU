.class Lcom/hijacker/MDKFragment$6$1;
.super Ljava/lang/Object;
.source "MDKFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/MDKFragment$6;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hijacker/MDKFragment$6;


# direct methods
.method constructor <init>(Lcom/hijacker/MDKFragment$6;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/MDKFragment$6$1;->this$1:Lcom/hijacker/MDKFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/hijacker/MDKFragment;->ados_switch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/hijacker/MainActivity;->stop(I)V

    return-void
.end method
