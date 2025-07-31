.class Lcom/offsec/nethunter/BTFragment$BadBtFragment$1;
.super Ljava/lang/Object;
.source "BTFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/BTFragment$BadBtFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

.field final synthetic val$badbt_class:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/BTFragment$BadBtFragment;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$1;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$1;->val$badbt_class:Landroid/widget/EditText;

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

    iget-object p2, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$1;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->-$$Nest$fputselected_prefix(Lcom/offsec/nethunter/BTFragment$BadBtFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$1;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->-$$Nest$fgetselected_prefix(Lcom/offsec/nethunter/BTFragment$BadBtFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 p3, -0x1

    sparse-switch p2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p2, "Custom"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x7

    goto :goto_0

    :sswitch_1
    const-string p2, "Printer"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x6

    goto :goto_0

    :sswitch_2
    const-string p2, "Keyboard"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p3, 0x5

    goto :goto_0

    :sswitch_3
    const-string p2, "Mouse"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p3, 0x4

    goto :goto_0

    :sswitch_4
    const-string p2, "PC"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p3, 0x3

    goto :goto_0

    :sswitch_5
    const-string p2, "Speaker"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p3, 0x2

    goto :goto_0

    :sswitch_6
    const-string p2, "Headset"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p3, 0x1

    goto :goto_0

    :sswitch_7
    const-string p2, "Mobile"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 p3, 0x0

    :goto_0
    packed-switch p3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$1;->val$badbt_class:Landroid/widget/EditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$1;->val$badbt_class:Landroid/widget/EditText;

    const-string p2, "0x040680"

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$1;->val$badbt_class:Landroid/widget/EditText;

    const-string p2, "0x000540"

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_3
    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$1;->val$badbt_class:Landroid/widget/EditText;

    const-string p2, "0x002580"

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_4
    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$1;->val$badbt_class:Landroid/widget/EditText;

    const-string p2, "0x02010c"

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_5
    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$1;->val$badbt_class:Landroid/widget/EditText;

    const-string p2, "0x240414"

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_6
    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$1;->val$badbt_class:Landroid/widget/EditText;

    const-string p2, "0x000408"

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_7
    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$1;->val$badbt_class:Landroid/widget/EditText;

    const-string p2, "0x000204"

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7650833e -> :sswitch_7
        -0x6d5fc59e -> :sswitch_6
        -0x147f0821 -> :sswitch_5
        0x9f3 -> :sswitch_4
        0x4714c85 -> :sswitch_3
        0x21e0d807 -> :sswitch_2
        0x50765ffa -> :sswitch_1
        0x78fb7791 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
