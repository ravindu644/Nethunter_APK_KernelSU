.class Lcom/offsec/nethunter/NmapFragment$2;
.super Ljava/lang/Object;
.source "NmapFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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

    iput-object p1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

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

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    packed-switch p3, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Unexpected value: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$fgettechnique(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$smremoveFromCmd(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    const-string p2, " -sX"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$fputtechnique(Lcom/offsec/nethunter/NmapFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$fgettechnique(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$smaddToCmd(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$fgettechnique(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$smremoveFromCmd(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    const-string p2, " -sF"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$fputtechnique(Lcom/offsec/nethunter/NmapFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$fgettechnique(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$smaddToCmd(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$fgettechnique(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$smremoveFromCmd(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    const-string p2, " -sN"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$fputtechnique(Lcom/offsec/nethunter/NmapFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$fgettechnique(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$smaddToCmd(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$fgettechnique(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$smremoveFromCmd(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    const-string p2, " -sM"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$fputtechnique(Lcom/offsec/nethunter/NmapFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$fgettechnique(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$smaddToCmd(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$fgettechnique(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$smremoveFromCmd(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    const-string p2, " -sW"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$fputtechnique(Lcom/offsec/nethunter/NmapFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$fgettechnique(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$smaddToCmd(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$fgettechnique(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$smremoveFromCmd(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    const-string p2, " -sA"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$fputtechnique(Lcom/offsec/nethunter/NmapFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$fgettechnique(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$smaddToCmd(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$fgettechnique(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$smremoveFromCmd(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    const-string p2, " -sT"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$fputtechnique(Lcom/offsec/nethunter/NmapFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$fgettechnique(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$smaddToCmd(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$fgettechnique(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$smremoveFromCmd(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    const-string p2, " -sS"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$fputtechnique(Lcom/offsec/nethunter/NmapFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$fgettechnique(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$smaddToCmd(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_8
    iget-object p1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$fgettechnique(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->-$$Nest$smremoveFromCmd(Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
