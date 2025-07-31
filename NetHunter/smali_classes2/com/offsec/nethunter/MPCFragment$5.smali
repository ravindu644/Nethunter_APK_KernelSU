.class Lcom/offsec/nethunter/MPCFragment$5;
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

    iput-object p1, p0, Lcom/offsec/nethunter/MPCFragment$5;->this$0:Lcom/offsec/nethunter/MPCFragment;

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

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 p3, -0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "HTTPS"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x3

    goto :goto_0

    :sswitch_1
    const-string p2, "HTTP"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x2

    goto :goto_0

    :sswitch_2
    const-string p2, "TCP"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p3, 0x1

    goto :goto_0

    :sswitch_3
    const-string p2, "Find Port"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    :goto_0
    packed-switch p3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/offsec/nethunter/MPCFragment$5;->this$0:Lcom/offsec/nethunter/MPCFragment;

    const-string p2, "https"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/MPCFragment;->-$$Nest$fputcallbackTypeVar(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/offsec/nethunter/MPCFragment$5;->this$0:Lcom/offsec/nethunter/MPCFragment;

    const-string p2, "http"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/MPCFragment;->-$$Nest$fputcallbackTypeVar(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lcom/offsec/nethunter/MPCFragment$5;->this$0:Lcom/offsec/nethunter/MPCFragment;

    const-string p2, "tcp"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/MPCFragment;->-$$Nest$fputcallbackTypeVar(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    iget-object p1, p0, Lcom/offsec/nethunter/MPCFragment$5;->this$0:Lcom/offsec/nethunter/MPCFragment;

    const-string p2, "find_port"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/MPCFragment;->-$$Nest$fputcallbackTypeVar(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x72732d78 -> :sswitch_3
        0x143c1 -> :sswitch_2
        0x220088 -> :sswitch_1
        0x41e10cb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
