.class Lcom/offsec/nethunter/VNCFragment$3;
.super Ljava/lang/Object;
.source "VNCFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/VNCFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/VNCFragment;

.field final synthetic val$exe:Lcom/offsec/nethunter/utils/ShellExecuter;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/VNCFragment;Lcom/offsec/nethunter/utils/ShellExecuter;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/VNCFragment$3;->this$0:Lcom/offsec/nethunter/VNCFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/VNCFragment$3;->val$exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p2, p0, Lcom/offsec/nethunter/VNCFragment$3;->this$0:Lcom/offsec/nethunter/VNCFragment;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/offsec/nethunter/VNCFragment;->-$$Nest$fputselected_res(Lcom/offsec/nethunter/VNCFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/VNCFragment$3;->this$0:Lcom/offsec/nethunter/VNCFragment;

    iget-object p2, p0, Lcom/offsec/nethunter/VNCFragment$3;->val$exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "echo "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p5, p0, Lcom/offsec/nethunter/VNCFragment$3;->this$0:Lcom/offsec/nethunter/VNCFragment;

    invoke-static {p5}, Lcom/offsec/nethunter/VNCFragment;->-$$Nest$fgetselected_res(Lcom/offsec/nethunter/VNCFragment;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " | cut -d : -f 1"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/offsec/nethunter/VNCFragment;->-$$Nest$fputselected_disp(Lcom/offsec/nethunter/VNCFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/VNCFragment$3;->this$0:Lcom/offsec/nethunter/VNCFragment;

    iget-object p2, p0, Lcom/offsec/nethunter/VNCFragment$3;->val$exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/offsec/nethunter/VNCFragment$3;->this$0:Lcom/offsec/nethunter/VNCFragment;

    invoke-static {p4}, Lcom/offsec/nethunter/VNCFragment;->-$$Nest$fgetselected_res(Lcom/offsec/nethunter/VNCFragment;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " | cut -d : -f 2 | sed \'s/ppi//g\'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/offsec/nethunter/VNCFragment;->-$$Nest$fputselected_ppi(Lcom/offsec/nethunter/VNCFragment;Ljava/lang/String;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
