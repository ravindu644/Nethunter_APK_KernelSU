.class Lcom/offsec/nethunter/VNCFragment$1;
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

    iput-object p1, p0, Lcom/offsec/nethunter/VNCFragment$1;->this$0:Lcom/offsec/nethunter/VNCFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/VNCFragment$1;->val$sharedpreferences:Landroid/content/SharedPreferences;

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

    iget-object p2, p0, Lcom/offsec/nethunter/VNCFragment$1;->this$0:Lcom/offsec/nethunter/VNCFragment;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/offsec/nethunter/VNCFragment;->-$$Nest$fputselected_user(Lcom/offsec/nethunter/VNCFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/VNCFragment$1;->val$sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lcom/offsec/nethunter/VNCFragment$1;->this$0:Lcom/offsec/nethunter/VNCFragment;

    invoke-static {p2}, Lcom/offsec/nethunter/VNCFragment;->-$$Nest$fgetselected_user(Lcom/offsec/nethunter/VNCFragment;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "user"

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
