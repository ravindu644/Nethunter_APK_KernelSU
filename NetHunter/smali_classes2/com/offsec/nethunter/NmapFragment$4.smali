.class Lcom/offsec/nethunter/NmapFragment$4;
.super Ljava/lang/Object;
.source "NmapFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/NmapFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/NmapFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/NmapFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/NmapFragment$4;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$4;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$fgetMySearch(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$smremoveFromCmd(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment$4;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$fgetsearchBar(Lcom/offsec/nethunter/NmapFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$fputMySearch(Lcom/offsec/nethunter/NmapFragment;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/offsec/nethunter/NmapFragment$4;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$fgetMySearch(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$smaddToCmd(Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
