.class Lcom/offsec/nethunter/CANFragment$2;
.super Ljava/lang/Object;
.source "CANFragment.java"

# interfaces
.implements Landroidx/core/view/MenuProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/CANFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/CANFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/CANFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/CANFragment$2;->this$0:Lcom/offsec/nethunter/CANFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0d0002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public synthetic onMenuClosed(Landroid/view/Menu;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/view/MenuProvider$-CC;->$default$onMenuClosed(Landroidx/core/view/MenuProvider;Landroid/view/Menu;)V

    return-void
.end method

.method public onMenuItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    const-string v1, "com.offsec.nethunter"

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    return v2

    :sswitch_0
    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$2;->this$0:Lcom/offsec/nethunter/CANFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/CANFragment;->-$$Nest$fgetcontext(Lcom/offsec/nethunter/CANFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-static {p1}, Lcom/offsec/nethunter/CANFragment;->-$$Nest$sfputsharedpreferences(Landroid/content/SharedPreferences;)V

    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$2;->this$0:Lcom/offsec/nethunter/CANFragment;

    invoke-virtual {p1}, Lcom/offsec/nethunter/CANFragment;->RunUpdate()V

    return v0

    :sswitch_1
    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$2;->this$0:Lcom/offsec/nethunter/CANFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/CANFragment;->-$$Nest$fgetcontext(Lcom/offsec/nethunter/CANFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-static {p1}, Lcom/offsec/nethunter/CANFragment;->-$$Nest$sfputsharedpreferences(Landroid/content/SharedPreferences;)V

    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$2;->this$0:Lcom/offsec/nethunter/CANFragment;

    invoke-virtual {p1}, Lcom/offsec/nethunter/CANFragment;->RunSetup()V

    return v0

    :sswitch_2
    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$2;->this$0:Lcom/offsec/nethunter/CANFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/CANFragment;->-$$Nest$fgetcontext(Lcom/offsec/nethunter/CANFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-static {p1}, Lcom/offsec/nethunter/CANFragment;->-$$Nest$sfputsharedpreferences(Landroid/content/SharedPreferences;)V

    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$2;->this$0:Lcom/offsec/nethunter/CANFragment;

    invoke-virtual {p1}, Lcom/offsec/nethunter/CANFragment;->RunDocumentation()V

    return v0

    :sswitch_3
    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$2;->this$0:Lcom/offsec/nethunter/CANFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/CANFragment;->-$$Nest$fgetcontext(Lcom/offsec/nethunter/CANFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-static {p1}, Lcom/offsec/nethunter/CANFragment;->-$$Nest$sfputsharedpreferences(Landroid/content/SharedPreferences;)V

    iget-object p1, p0, Lcom/offsec/nethunter/CANFragment$2;->this$0:Lcom/offsec/nethunter/CANFragment;

    invoke-virtual {p1}, Lcom/offsec/nethunter/CANFragment;->RunAbout()V

    return v0

    :sswitch_data_0
    .sparse-switch
        0x7f09002e -> :sswitch_3
        0x7f090162 -> :sswitch_2
        0x7f0903f7 -> :sswitch_1
        0x7f0904b7 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic onPrepareMenu(Landroid/view/Menu;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/view/MenuProvider$-CC;->$default$onPrepareMenu(Landroidx/core/view/MenuProvider;Landroid/view/Menu;)V

    return-void
.end method
