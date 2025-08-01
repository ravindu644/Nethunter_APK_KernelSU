.class Lcom/hijacker/CustomActionEditorFragment$2;
.super Ljava/lang/Object;
.source "CustomActionEditorFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/CustomActionEditorFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/CustomActionEditorFragment;


# direct methods
.method constructor <init>(Lcom/hijacker/CustomActionEditorFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$2;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lcom/hijacker/CustomActionEditorFragment$2;->this$0:Lcom/hijacker/CustomActionEditorFragment;

    iget-object p1, p1, Lcom/hijacker/CustomActionEditorFragment;->processNameView:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method
