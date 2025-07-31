.class Lcom/offsec/nethunter/VNCFragment$4;
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

.field final synthetic val$sharedpreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/VNCFragment;Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/VNCFragment$4;->this$0:Lcom/offsec/nethunter/VNCFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/VNCFragment$4;->val$sharedpreferences:Landroid/content/SharedPreferences;

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

    iget-object p2, p0, Lcom/offsec/nethunter/VNCFragment$4;->this$0:Lcom/offsec/nethunter/VNCFragment;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/offsec/nethunter/VNCFragment;->-$$Nest$fputselected_vncres(Lcom/offsec/nethunter/VNCFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/VNCFragment$4;->this$0:Lcom/offsec/nethunter/VNCFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/VNCFragment;->-$$Nest$fgetselected_vncres(Lcom/offsec/nethunter/VNCFragment;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Auto"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/offsec/nethunter/VNCFragment$4;->this$0:Lcom/offsec/nethunter/VNCFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/VNCFragment;->-$$Nest$fgetselected_vncres(Lcom/offsec/nethunter/VNCFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/offsec/nethunter/VNCFragment$4;->this$0:Lcom/offsec/nethunter/VNCFragment;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "-geometry "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/offsec/nethunter/VNCFragment$4;->this$0:Lcom/offsec/nethunter/VNCFragment;

    invoke-static {p4}, Lcom/offsec/nethunter/VNCFragment;->-$$Nest$fgetselected_vncres(Lcom/offsec/nethunter/VNCFragment;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/offsec/nethunter/VNCFragment;->-$$Nest$fputselected_vncresCMD(Lcom/offsec/nethunter/VNCFragment;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/offsec/nethunter/VNCFragment$4;->this$0:Lcom/offsec/nethunter/VNCFragment;

    const-string p2, ""

    invoke-static {p1, p2}, Lcom/offsec/nethunter/VNCFragment;->-$$Nest$fputselected_vncresCMD(Lcom/offsec/nethunter/VNCFragment;Ljava/lang/String;)V

    :goto_1
    iget-object p1, p0, Lcom/offsec/nethunter/VNCFragment$4;->val$sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "last_kex_res"

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lcom/offsec/nethunter/VNCFragment$4;->val$sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lcom/offsec/nethunter/VNCFragment$4;->this$0:Lcom/offsec/nethunter/VNCFragment;

    invoke-static {p2}, Lcom/offsec/nethunter/VNCFragment;->-$$Nest$fgetselected_vncres(Lcom/offsec/nethunter/VNCFragment;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "last_kex_res_string"

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

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
