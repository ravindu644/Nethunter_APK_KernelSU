.class Lcom/offsec/nethunter/MacchangerFragment$1;
.super Ljava/lang/Object;
.source "MacchangerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/MacchangerFragment;->setupInterfaceSpinner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/MacchangerFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/MacchangerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/MacchangerFragment$1;->this$0:Lcom/offsec/nethunter/MacchangerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-static {p3}, Lcom/offsec/nethunter/MacchangerFragment;->-$$Nest$sfputlastSelectedIfacePosition(I)V

    iget-object p1, p0, Lcom/offsec/nethunter/MacchangerFragment$1;->this$0:Lcom/offsec/nethunter/MacchangerFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/MacchangerFragment;->-$$Nest$fgetcurrentMacTextView(Lcom/offsec/nethunter/MacchangerFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {}, Lcom/offsec/nethunter/MacchangerFragment;->-$$Nest$sfgetiFaceAndMacHashMap()Ljava/util/HashMap;

    move-result-object p2

    iget-object p3, p0, Lcom/offsec/nethunter/MacchangerFragment$1;->this$0:Lcom/offsec/nethunter/MacchangerFragment;

    invoke-static {p3}, Lcom/offsec/nethunter/MacchangerFragment;->-$$Nest$fgetinterfaceSpinner(Lcom/offsec/nethunter/MacchangerFragment;)Landroid/widget/Spinner;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/offsec/nethunter/MacchangerFragment$1;->this$0:Lcom/offsec/nethunter/MacchangerFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/MacchangerFragment;->-$$Nest$fgetchangeMacButton(Lcom/offsec/nethunter/MacchangerFragment;)Landroid/widget/Button;

    move-result-object p1

    const/4 p2, 0x2

    new-array p3, p2, [Ljava/lang/Object;

    iget-object p4, p0, Lcom/offsec/nethunter/MacchangerFragment$1;->this$0:Lcom/offsec/nethunter/MacchangerFragment;

    const p5, 0x7f110062

    invoke-virtual {p4, p5}, Lcom/offsec/nethunter/MacchangerFragment;->getString(I)Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x0

    aput-object p4, p3, p5

    iget-object p4, p0, Lcom/offsec/nethunter/MacchangerFragment$1;->this$0:Lcom/offsec/nethunter/MacchangerFragment;

    invoke-static {p4}, Lcom/offsec/nethunter/MacchangerFragment;->-$$Nest$fgetinterfaceSpinner(Lcom/offsec/nethunter/MacchangerFragment;)Landroid/widget/Spinner;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x1

    aput-object p4, p3, v0

    const-string p4, "{0} {1}"

    invoke-static {p4, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/offsec/nethunter/MacchangerFragment$1;->this$0:Lcom/offsec/nethunter/MacchangerFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/MacchangerFragment;->-$$Nest$fgetresetMacButton(Lcom/offsec/nethunter/MacchangerFragment;)Landroid/widget/Button;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    iget-object p3, p0, Lcom/offsec/nethunter/MacchangerFragment$1;->this$0:Lcom/offsec/nethunter/MacchangerFragment;

    const v1, 0x7f1101bb

    invoke-virtual {p3, v1}, Lcom/offsec/nethunter/MacchangerFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, p5

    iget-object p3, p0, Lcom/offsec/nethunter/MacchangerFragment$1;->this$0:Lcom/offsec/nethunter/MacchangerFragment;

    invoke-static {p3}, Lcom/offsec/nethunter/MacchangerFragment;->-$$Nest$fgetinterfaceSpinner(Lcom/offsec/nethunter/MacchangerFragment;)Landroid/widget/Spinner;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v0

    invoke-static {p4, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

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
