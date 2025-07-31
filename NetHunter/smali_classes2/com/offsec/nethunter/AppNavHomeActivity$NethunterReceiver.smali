.class public Lcom/offsec/nethunter/AppNavHomeActivity$NethunterReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppNavHomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/AppNavHomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NethunterReceiver"
.end annotation


# static fields
.field public static final BACKPRESSED:Ljava/lang/String; = "com.offsec.nethunter.BACKPRESSED"

.field public static final CHECKCHROOT:Ljava/lang/String; = "com.offsec.nethunter.CHECKCHROOT"

.field public static final CHECKCOMPAT:Ljava/lang/String; = "com.offsec.nethunter.CHECKCOMPAT"


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/AppNavHomeActivity;


# direct methods
.method public constructor <init>(Lcom/offsec/nethunter/AppNavHomeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity$NethunterReceiver;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "com.offsec.nethunter.CHECKCOMPAT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "com.offsec.nethunter.CHECKCHROOT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "com.offsec.nethunter.BACKPRESSED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity$NethunterReceiver;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    const-string v0, "message"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "NetHunter app cannot be run properly"

    invoke-virtual {p1, v0, p2, v2}, Lcom/offsec/nethunter/AppNavHomeActivity;->showWarningDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    :pswitch_1
    :try_start_0
    const-string p1, "ENABLEFRAGMENT"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const p2, 0x7f090106

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity$NethunterReceiver;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-static {p1}, Lcom/offsec/nethunter/AppNavHomeActivity;->-$$Nest$fgetnavigationView(Lcom/offsec/nethunter/AppNavHomeActivity;)Lcom/google/android/material/navigation/NavigationView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-interface {p1, p2, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity$NethunterReceiver;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-static {p1}, Lcom/offsec/nethunter/AppNavHomeActivity;->-$$Nest$fgetnavigationView(Lcom/offsec/nethunter/AppNavHomeActivity;)Lcom/google/android/material/navigation/NavigationView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-interface {p1, p2, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    sget-object p1, Lcom/offsec/nethunter/AppNavHomeActivity;->lastSelectedMenuItem:Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const p2, 0x7f09033a

    if-eq p1, p2, :cond_6

    sget-object p1, Lcom/offsec/nethunter/AppNavHomeActivity;->lastSelectedMenuItem:Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f09011e

    if-eq p1, v0, :cond_6

    iget-object p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity$NethunterReceiver;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-virtual {p1}, Lcom/offsec/nethunter/AppNavHomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity$NethunterReceiver;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-static {p2}, Lcom/offsec/nethunter/NetHunterFragment;->newInstance(I)Lcom/offsec/nethunter/NetHunterFragment;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/offsec/nethunter/AppNavHomeActivity;->-$$Nest$mchangeFragment(Lcom/offsec/nethunter/AppNavHomeActivity;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AppNavHomeActivity"

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string p1, "e.getMessage is Null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_2
    const-string p1, "isEnable"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/offsec/nethunter/AppNavHomeActivity;->isBackPressEnabled:Ljava/lang/Boolean;

    sget-object p1, Lcom/offsec/nethunter/AppNavHomeActivity;->isBackPressEnabled:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity$NethunterReceiver;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-virtual {p1}, Lcom/offsec/nethunter/AppNavHomeActivity;->restoreActionBar()V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity$NethunterReceiver;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-virtual {p1}, Lcom/offsec/nethunter/AppNavHomeActivity;->blockActionBar()V

    :cond_6
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x17a00af5 -> :sswitch_2
        -0xd27de81 -> :sswitch_1
        -0xcc77dc6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
