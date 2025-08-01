.class Lcom/hijacker/MDKFragment$3;
.super Ljava/lang/Object;
.source "MDKFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/MDKFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/MDKFragment;


# direct methods
.method constructor <init>(Lcom/hijacker/MDKFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/MDKFragment$3;->this$0:Lcom/hijacker/MDKFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lcom/hijacker/MDKFragment$3;->this$0:Lcom/hijacker/MDKFragment;

    invoke-virtual {p1, p2}, Lcom/hijacker/MDKFragment;->onDosSwitch(Z)V

    return-void
.end method
