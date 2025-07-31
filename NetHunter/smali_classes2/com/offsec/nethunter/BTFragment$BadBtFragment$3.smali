.class Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;
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

.field final synthetic val$BadBTUACView:Landroid/view/View;

.field final synthetic val$badbtpresets_uac:Landroid/widget/Spinner;

.field final synthetic val$presets_uac:Ljava/util/ArrayList;

.field final synthetic val$uacCheckBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/BTFragment$BadBtFragment;Landroid/view/View;Landroid/widget/CheckBox;Ljava/util/ArrayList;Landroid/widget/Spinner;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$BadBTUACView:Landroid/view/View;

    iput-object p3, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$uacCheckBox:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$presets_uac:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$badbtpresets_uac:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p2, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->-$$Nest$fputselected_prefix(Lcom/offsec/nethunter/BTFragment$BadBtFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->-$$Nest$fgetselected_prefix(Lcom/offsec/nethunter/BTFragment$BadBtFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const-string p3, "None"

    const/4 p4, 0x0

    const/4 p5, -0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "Mac Terminal"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p5, 0x5

    goto :goto_0

    :sswitch_1
    const-string p2, "Mobile Browser"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p5, 0x4

    goto :goto_0

    :sswitch_2
    const-string p2, "Mobile Home"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p5, 0x3

    goto :goto_0

    :sswitch_3
    const-string p2, "Linux Terminal"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p5, 0x2

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p5, 0x1

    goto :goto_0

    :sswitch_5
    const-string p2, "Windows CMD"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p5, 0x0

    :goto_0
    const p1, 0x1090003

    const/16 p2, 0x8

    const-string v0, "-"

    packed-switch p5, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p5, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$BadBTUACView:Landroid/view/View;

    invoke-virtual {p5, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    const-string p5, "mac"

    iput-object p5, p2, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->prefixCMD:Ljava/lang/String;

    iget-object p2, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$uacCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p2, p4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p2, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$presets_uac:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$presets_uac:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$badbtpresets_uac:Landroid/widget/Spinner;

    new-instance p3, Landroid/widget/ArrayAdapter;

    iget-object p4, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    invoke-virtual {p4}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->requireContext()Landroid/content/Context;

    move-result-object p4

    iget-object p5, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$presets_uac:Ljava/util/ArrayList;

    invoke-direct {p3, p4, p1, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    iput-object v0, p1, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->uacCMD:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_1
    iget-object p5, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$BadBTUACView:Landroid/view/View;

    invoke-virtual {p5, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    const-string p5, "mobilewww"

    iput-object p5, p2, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->prefixCMD:Ljava/lang/String;

    iget-object p2, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$uacCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p2, p4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p2, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$presets_uac:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$presets_uac:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$badbtpresets_uac:Landroid/widget/Spinner;

    new-instance p3, Landroid/widget/ArrayAdapter;

    iget-object p4, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    invoke-virtual {p4}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->requireContext()Landroid/content/Context;

    move-result-object p4

    iget-object p5, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$presets_uac:Ljava/util/ArrayList;

    invoke-direct {p3, p4, p1, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    iput-object v0, p1, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->uacCMD:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_2
    iget-object p5, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$BadBTUACView:Landroid/view/View;

    invoke-virtual {p5, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    const-string p5, "mobile"

    iput-object p5, p2, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->prefixCMD:Ljava/lang/String;

    iget-object p2, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$uacCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p2, p4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p2, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$presets_uac:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$presets_uac:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$badbtpresets_uac:Landroid/widget/Spinner;

    new-instance p3, Landroid/widget/ArrayAdapter;

    iget-object p4, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    invoke-virtual {p4}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->requireContext()Landroid/content/Context;

    move-result-object p4

    iget-object p5, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$presets_uac:Ljava/util/ArrayList;

    invoke-direct {p3, p4, p1, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    iput-object v0, p1, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->uacCMD:Ljava/lang/String;

    goto :goto_1

    :pswitch_3
    iget-object p5, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$BadBTUACView:Landroid/view/View;

    invoke-virtual {p5, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    const-string p5, "linux"

    iput-object p5, p2, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->prefixCMD:Ljava/lang/String;

    iget-object p2, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$uacCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p2, p4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p2, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$presets_uac:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$presets_uac:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$badbtpresets_uac:Landroid/widget/Spinner;

    new-instance p3, Landroid/widget/ArrayAdapter;

    iget-object p4, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    invoke-virtual {p4}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->requireContext()Landroid/content/Context;

    move-result-object p4

    iget-object p5, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$presets_uac:Ljava/util/ArrayList;

    invoke-direct {p3, p4, p1, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    iput-object v0, p1, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->uacCMD:Ljava/lang/String;

    goto :goto_1

    :pswitch_4
    iget-object p5, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$BadBTUACView:Landroid/view/View;

    invoke-virtual {p5, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    iput-object v0, p2, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->uacCMD:Ljava/lang/String;

    iget-object p2, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$uacCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p2, p4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p2, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$presets_uac:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$presets_uac:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$badbtpresets_uac:Landroid/widget/Spinner;

    new-instance p3, Landroid/widget/ArrayAdapter;

    iget-object p4, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    invoke-virtual {p4}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->requireContext()Landroid/content/Context;

    move-result-object p4

    iget-object p5, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$presets_uac:Ljava/util/ArrayList;

    invoke-direct {p3, p4, p1, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    iput-object v0, p1, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->uacCMD:Ljava/lang/String;

    goto :goto_1

    :pswitch_5
    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$BadBTUACView:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    const-string p2, "windows"

    iput-object p2, p1, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->prefixCMD:Ljava/lang/String;

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x29821e23 -> :sswitch_5
        0x252358 -> :sswitch_4
        0x4dd2468 -> :sswitch_3
        0x118f859d -> :sswitch_2
        0x54acf9aa -> :sswitch_1
        0x797d0e6d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
