.class Lcom/offsec/nethunter/WPSFragment$2;
.super Ljava/lang/Object;
.source "WPSFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/WPSFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/WPSFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/WPSFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/WPSFragment$2;->this$0:Lcom/offsec/nethunter/WPSFragment;

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

    iget-object p1, p0, Lcom/offsec/nethunter/WPSFragment$2;->this$0:Lcom/offsec/nethunter/WPSFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/WPSFragment;->-$$Nest$fgetWPSList(Lcom/offsec/nethunter/WPSFragment;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "No nearby WPS networks"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "Please reset the interface!"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/offsec/nethunter/WPSFragment$2;->this$0:Lcom/offsec/nethunter/WPSFragment;

    invoke-static {p2}, Lcom/offsec/nethunter/WPSFragment;->-$$Nest$fgetexe(Lcom/offsec/nethunter/WPSFragment;)Lcom/offsec/nethunter/utils/ShellExecuter;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "echo \""

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" | cut -d \' \' -f 1"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/offsec/nethunter/WPSFragment;->-$$Nest$fputselected_network(Lcom/offsec/nethunter/WPSFragment;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/offsec/nethunter/WPSFragment$2;->this$0:Lcom/offsec/nethunter/WPSFragment;

    const-string p2, ""

    invoke-static {p1, p2}, Lcom/offsec/nethunter/WPSFragment;->-$$Nest$fputselected_network(Lcom/offsec/nethunter/WPSFragment;Ljava/lang/String;)V

    :goto_1
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
