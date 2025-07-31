.class Lcom/offsec/nethunter/MPCFragment$1;
.super Ljava/lang/Object;
.source "MPCFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/MPCFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/MPCFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/MPCFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/MPCFragment$1;->this$0:Lcom/offsec/nethunter/MPCFragment;

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

    move-result-object p1

    const-string p2, "Selected: "

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/offsec/nethunter/MPCFragment$1;->this$0:Lcom/offsec/nethunter/MPCFragment;

    const-string p2, "apk"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/MPCFragment;->-$$Nest$fputtypeVar(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/offsec/nethunter/MPCFragment$1;->this$0:Lcom/offsec/nethunter/MPCFragment;

    const-string p2, "windows"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/MPCFragment;->-$$Nest$fputtypeVar(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/offsec/nethunter/MPCFragment$1;->this$0:Lcom/offsec/nethunter/MPCFragment;

    const-string p2, "tomcat"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/MPCFragment;->-$$Nest$fputtypeVar(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/offsec/nethunter/MPCFragment$1;->this$0:Lcom/offsec/nethunter/MPCFragment;

    const-string p2, "python"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/MPCFragment;->-$$Nest$fputtypeVar(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/offsec/nethunter/MPCFragment$1;->this$0:Lcom/offsec/nethunter/MPCFragment;

    const-string p2, "powershell"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/MPCFragment;->-$$Nest$fputtypeVar(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/offsec/nethunter/MPCFragment$1;->this$0:Lcom/offsec/nethunter/MPCFragment;

    const-string p2, "php"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/MPCFragment;->-$$Nest$fputtypeVar(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    iget-object p1, p0, Lcom/offsec/nethunter/MPCFragment$1;->this$0:Lcom/offsec/nethunter/MPCFragment;

    const-string p2, "perl"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/MPCFragment;->-$$Nest$fputtypeVar(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    iget-object p1, p0, Lcom/offsec/nethunter/MPCFragment$1;->this$0:Lcom/offsec/nethunter/MPCFragment;

    const-string p2, "osx"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/MPCFragment;->-$$Nest$fputtypeVar(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_8
    iget-object p1, p0, Lcom/offsec/nethunter/MPCFragment$1;->this$0:Lcom/offsec/nethunter/MPCFragment;

    const-string p2, "linux"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/MPCFragment;->-$$Nest$fputtypeVar(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_9
    iget-object p1, p0, Lcom/offsec/nethunter/MPCFragment$1;->this$0:Lcom/offsec/nethunter/MPCFragment;

    const-string p2, "java"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/MPCFragment;->-$$Nest$fputtypeVar(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_a
    iget-object p1, p0, Lcom/offsec/nethunter/MPCFragment$1;->this$0:Lcom/offsec/nethunter/MPCFragment;

    const-string p2, "bash"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/MPCFragment;->-$$Nest$fputtypeVar(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_b
    iget-object p1, p0, Lcom/offsec/nethunter/MPCFragment$1;->this$0:Lcom/offsec/nethunter/MPCFragment;

    const-string p2, "aspx"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/MPCFragment;->-$$Nest$fputtypeVar(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_c
    iget-object p1, p0, Lcom/offsec/nethunter/MPCFragment$1;->this$0:Lcom/offsec/nethunter/MPCFragment;

    const-string p2, "asp"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/MPCFragment;->-$$Nest$fputtypeVar(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
