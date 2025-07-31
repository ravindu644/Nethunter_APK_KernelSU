.class public Lcom/offsec/nethunter/NetHunterFragment;
.super Landroidx/fragment/app/Fragment;
.source "NetHunterFragment.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"

.field private static targetPositionId:I


# instance fields
.field private activity:Landroid/app/Activity;

.field private addButton:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private deleteButton:Landroid/widget/Button;

.field private moveButton:Landroid/widget/Button;

.field private nethunterRecyclerViewAdapter:Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;

.field private refreshButton:Landroid/widget/Button;

.field private sharedpreferences:Landroid/content/SharedPreferences;

.field private snowfallButton:Landroid/view/MenuItem;


# direct methods
.method static bridge synthetic -$$Nest$fgetnethunterRecyclerViewAdapter(Lcom/offsec/nethunter/NetHunterFragment;)Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/NetHunterFragment;->nethunterRecyclerViewAdapter:Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfputtargetPositionId(I)V
    .locals 0

    sput p0, Lcom/offsec/nethunter/NetHunterFragment;->targetPositionId:I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic lambda$onAddItemSetup$12(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onAddItemSetup$14(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onAddItemSetup$16(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onAddItemSetup$18(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onAddItemSetup$19(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$onCreateOptionsMenu$1(Landroid/view/Menu;Landroid/view/View;)V
    .locals 1

    const p1, 0x7f090220

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    return-void
.end method

.method static synthetic lambda$onCreateOptionsMenu$2(Landroid/view/Menu;)Z
    .locals 2

    const v0, 0x7f090220

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$onDeleteItemSetup$23(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onDeleteItemSetup$24(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$onMoveItemSetup$28(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onMoveItemSetup$29(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$onOptionsItemSelected$3(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onOptionsItemSelected$4(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$onOptionsItemSelected$7(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onOptionsItemSelected$8(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$onRefreshItemSetup$11(Landroid/view/View;)V
    .locals 0

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->refreshData()V

    return-void
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/NetHunterFragment;
    .locals 3

    new-instance v0, Lcom/offsec/nethunter/NetHunterFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/NetHunterFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/NetHunterFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private onAddItemSetup()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->addButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda13;-><init>(Lcom/offsec/nethunter/NetHunterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private onDeleteItemSetup()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->deleteButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/NetHunterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private onMoveItemSetup()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->moveButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/NetHunterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private onRefreshItemSetup()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->refreshButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private trigger_snowfall()V
    .locals 4

    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->activity:Landroid/app/Activity;

    const-string v1, "com.offsec.nethunter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/offsec/nethunter/NetHunterFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const-string v3, "snowfall_enabled"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->snowfallButton:Landroid/view/MenuItem;

    const v1, 0x7f0800d4

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/offsec/nethunter/NetHunterFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Snowfall disabled. Restart app to take effect."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->snowfallButton:Landroid/view/MenuItem;

    const v1, 0x7f0800d3

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/offsec/nethunter/NetHunterFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Snowfall enabled. Restart app to take effect."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method


# virtual methods
.method synthetic lambda$onAddItemSetup$13$com-offsec-nethunter-NetHunterFragment(Landroid/view/View;)V
    .locals 3

    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->activity:Landroid/app/Activity;

    const v1, 0x7f120117

    invoke-direct {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v0, "HOW TO USE:"

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/NetHunterFragment;->activity:Landroid/app/Activity;

    const v2, 0x7f110177

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda3;-><init>()V

    const-string v2, "Close"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method synthetic lambda$onAddItemSetup$15$com-offsec-nethunter-NetHunterFragment(Landroid/view/View;)V
    .locals 3

    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->activity:Landroid/app/Activity;

    const v1, 0x7f120117

    invoke-direct {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v0, "HOW TO USE:"

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/NetHunterFragment;->activity:Landroid/app/Activity;

    const v2, 0x7f110178

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda10;-><init>()V

    const-string v2, "Close"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method synthetic lambda$onAddItemSetup$17$com-offsec-nethunter-NetHunterFragment(Landroid/view/View;)V
    .locals 3

    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->activity:Landroid/app/Activity;

    const v1, 0x7f120117

    invoke-direct {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v0, "HOW TO USE:"

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/NetHunterFragment;->activity:Landroid/app/Activity;

    const v2, 0x7f110179

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda17;

    invoke-direct {v1}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda17;-><init>()V

    const-string v2, "Close"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method synthetic lambda$onAddItemSetup$20$com-offsec-nethunter-NetHunterFragment(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result p6

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    const-string p2, "Title cannot be empty"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result p6

    if-eqz p6, :cond_1

    iget-object p1, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    const-string p2, "Command cannot be empty"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result p6

    if-eqz p6, :cond_2

    iget-object p1, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    const-string p2, "Delimiter cannot be empty"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "1"

    goto :goto_0

    :cond_3
    const-string p1, "0"

    :goto_0
    invoke-virtual {p6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object p1

    sget p2, Lcom/offsec/nethunter/NetHunterFragment;->targetPositionId:I

    iget-object p3, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    invoke-static {p3}, Lcom/offsec/nethunter/SQL/NethunterSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/NethunterSQL;

    move-result-object p3

    invoke-virtual {p1, p2, p6, p3}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->addData(ILjava/util/List;Lcom/offsec/nethunter/SQL/NethunterSQL;)V

    invoke-virtual {p5}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    :goto_1
    return-void
.end method

.method synthetic lambda$onAddItemSetup$21$com-offsec-nethunter-NetHunterFragment(Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/content/DialogInterface;)V
    .locals 8

    const/4 p6, -0x1

    invoke-virtual {p1, p6}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p6

    new-instance v7, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda0;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/NetHunterFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {p6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$onAddItemSetup$22$com-offsec-nethunter-NetHunterFragment(Landroid/view/View;)V
    .locals 12

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object p1

    iget-object p1, p1, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->nethunterModelListFull:Ljava/util/List;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->activity:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0c0099

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090208

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/EditText;

    const v1, 0x7f090206

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/EditText;

    const v1, 0x7f090207

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/EditText;

    const v1, 0x7f09022a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/CheckBox;

    const v1, 0x7f090209

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    const v2, 0x7f09020a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/offsec/nethunter/models/NethunterModel;

    invoke-virtual {v9}, Lcom/offsec/nethunter/models/NethunterModel;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v9, p0, Lcom/offsec/nethunter/NetHunterFragment;->activity:Landroid/app/Activity;

    const v10, 0x1090008

    invoke-direct {v4, v9, v10, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v3, 0x1090009

    invoke-virtual {v4, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    const v3, 0x7f09020b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v9, 0x7f09020c

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v10, 0x7f09020d

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v11, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda11;

    invoke-direct {v11, p0}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda11;-><init>(Lcom/offsec/nethunter/NetHunterFragment;)V

    invoke-virtual {v3, v11}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda22;

    invoke-direct {v3, p0}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda22;-><init>(Lcom/offsec/nethunter/NetHunterFragment;)V

    invoke-virtual {v9, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda26;

    invoke-direct {v3, p0}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda26;-><init>(Lcom/offsec/nethunter/NetHunterFragment;)V

    invoke-virtual {v10, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v3, "\\n"

    invoke-virtual {v7, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v9, Lcom/offsec/nethunter/NetHunterFragment$2;

    invoke-direct {v9, p0, v2, p1, v4}, Lcom/offsec/nethunter/NetHunterFragment$2;-><init>(Lcom/offsec/nethunter/NetHunterFragment;Landroid/widget/Spinner;Ljava/util/List;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v1, v9}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/NetHunterFragment;->activity:Landroid/app/Activity;

    const v2, 0x7f120117

    invoke-direct {p1, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda27;

    invoke-direct {v1}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda27;-><init>()V

    const-string v2, "Cancel"

    invoke-virtual {p1, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v1, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda28;

    invoke-direct {v1}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda28;-><init>()V

    const-string v2, "OK"

    invoke-virtual {p1, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    invoke-virtual {p1, v3}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    new-instance v0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda29;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda29;-><init>(Lcom/offsec/nethunter/NetHunterFragment;Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method synthetic lambda$onDeleteItemSetup$25$com-offsec-nethunter-NetHunterFragment(Landroidx/recyclerview/widget/RecyclerView;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 4

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f090227

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object p1

    iget-object v1, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/offsec/nethunter/SQL/NethunterSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/NethunterSQL;

    move-result-object v1

    invoke-virtual {p1, p3, v0, v1}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->deleteData(Ljava/util/List;Ljava/util/List;Lcom/offsec/nethunter/SQL/NethunterSQL;)V

    iget-object p1, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Successfully deleted "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " items."

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    const-string p2, "Nothing to be deleted."

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method synthetic lambda$onDeleteItemSetup$26$com-offsec-nethunter-NetHunterFragment(Landroidx/appcompat/app/AlertDialog;Landroidx/recyclerview/widget/RecyclerView;Landroid/content/DialogInterface;)V
    .locals 1

    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p3

    new-instance v0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2, p1}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/NetHunterFragment;Landroidx/recyclerview/widget/RecyclerView;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$onDeleteItemSetup$27$com-offsec-nethunter-NetHunterFragment(Landroid/view/View;)V
    .locals 6

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object p1

    iget-object p1, p1, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->nethunterModelListFull:Ljava/util/List;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0c009b

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090212

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterDeleteItems;

    iget-object v4, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    invoke-direct {v2, v4, p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterDeleteItems;-><init>(Landroid/content/Context;Ljava/util/List;)V

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v4, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-direct {p1, v4, v5, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v2, p0, Lcom/offsec/nethunter/NetHunterFragment;->activity:Landroid/app/Activity;

    const v3, 0x7f120117

    invoke-direct {p1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda30;-><init>()V

    const-string v2, "Cancel"

    invoke-virtual {p1, v2, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda31;-><init>()V

    const-string v2, "Delete"

    invoke-virtual {p1, v2, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const-string v0, "Select the item you want to remove: "

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0, p1, v1}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda32;-><init>(Lcom/offsec/nethunter/NetHunterFragment;Landroidx/appcompat/app/AlertDialog;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method synthetic lambda$onMoveItemSetup$30$com-offsec-nethunter-NetHunterFragment(Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p2

    if-eq p1, p2, :cond_3

    invoke-virtual {p3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p5

    if-nez p5, :cond_0

    add-int/lit8 p5, p1, 0x1

    if-eq p2, p5, :cond_3

    :cond_0
    invoke-virtual {p3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p5

    const/4 v0, 0x1

    if-ne p5, v0, :cond_1

    add-int/lit8 p5, p1, -0x1

    if-ne p2, p5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p3

    if-ne p3, v0, :cond_2

    add-int/lit8 p2, p2, 0x1

    :cond_2
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object p3

    iget-object p5, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    invoke-static {p5}, Lcom/offsec/nethunter/SQL/NethunterSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/NethunterSQL;

    move-result-object p5

    invoke-virtual {p3, p1, p2, p5}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->moveData(IILcom/offsec/nethunter/SQL/NethunterSQL;)V

    iget-object p1, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    const-string p2, "Successfully moved item."

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p4}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    const-string p2, "You are moving the item to the same position, nothing to be moved."

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method synthetic lambda$onMoveItemSetup$31$com-offsec-nethunter-NetHunterFragment(Landroidx/appcompat/app/AlertDialog;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/content/DialogInterface;)V
    .locals 7

    const/4 p5, -0x1

    invoke-virtual {p1, p5}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p5

    new-instance v6, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda9;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda9;-><init>(Lcom/offsec/nethunter/NetHunterFragment;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {p5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$onMoveItemSetup$32$com-offsec-nethunter-NetHunterFragment(Landroid/view/View;)V
    .locals 8

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object p1

    iget-object p1, p1, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->nethunterModelListFull:Ljava/util/List;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f0c009d

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090225

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/Spinner;

    const v1, 0x7f090224

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/Spinner;

    const v1, 0x7f090223

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/Spinner;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/NethunterModel;

    invoke-virtual {v2}, Lcom/offsec/nethunter/models/NethunterModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    const v3, 0x1090008

    invoke-direct {p1, v2, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v1, 0x1090009

    invoke-virtual {p1, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v5, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-virtual {v6, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/NetHunterFragment;->activity:Landroid/app/Activity;

    const v2, 0x7f120117

    invoke-direct {p1, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "Cancel"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "Move"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    new-instance v0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda16;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda16;-><init>(Lcom/offsec/nethunter/NetHunterFragment;Landroidx/appcompat/app/AlertDialog;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method synthetic lambda$onOptionsItemSelected$10$com-offsec-nethunter-NetHunterFragment(Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p2, p3}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda25;-><init>(Lcom/offsec/nethunter/NetHunterFragment;Landroid/widget/EditText;Landroid/content/DialogInterface;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$onOptionsItemSelected$5$com-offsec-nethunter-NetHunterFragment(Landroid/widget/EditText;Landroid/content/DialogInterface;Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object p3

    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/offsec/nethunter/SQL/NethunterSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/NethunterSQL;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->backupData(Lcom/offsec/nethunter/SQL/NethunterSQL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "db is successfully backup to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    const v1, 0x7f120117

    invoke-direct {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v0, "Failed to backup the DB."

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    :goto_0
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method synthetic lambda$onOptionsItemSelected$6$com-offsec-nethunter-NetHunterFragment(Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p2, p3}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda8;-><init>(Lcom/offsec/nethunter/NetHunterFragment;Landroid/widget/EditText;Landroid/content/DialogInterface;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$onOptionsItemSelected$9$com-offsec-nethunter-NetHunterFragment(Landroid/widget/EditText;Landroid/content/DialogInterface;Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object p3

    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/offsec/nethunter/SQL/NethunterSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/NethunterSQL;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->restoreData(Lcom/offsec/nethunter/SQL/NethunterSQL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "db is successfully restored to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    const v1, 0x7f120117

    invoke-direct {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v0, "Failed to restore the DB."

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    :goto_0
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method synthetic lambda$onViewCreated$0$com-offsec-nethunter-NetHunterFragment(Ljava/util/List;)V
    .locals 0

    iget-object p1, p0, Lcom/offsec/nethunter/NetHunterFragment;->nethunterRecyclerViewAdapter:Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;

    invoke-virtual {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/NetHunterFragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/NetHunterFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/offsec/nethunter/NetHunterFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/NetHunterFragment;->activity:Landroid/app/Activity;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f0d000a

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f090201

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->activity:Landroid/app/Activity;

    const-string v1, "com.offsec.nethunter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/offsec/nethunter/NetHunterFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "snowfall_enabled"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/SearchView;

    new-instance v1, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda5;-><init>(Landroid/view/Menu;)V

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/SearchView;->setOnSearchClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda6;-><init>(Landroid/view/Menu;)V

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/SearchView;->setOnCloseListener(Landroidx/appcompat/widget/SearchView$OnCloseListener;)V

    const v1, 0x7f090202

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/NetHunterFragment;->snowfallButton:Landroid/view/MenuItem;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/offsec/nethunter/NetHunterFragment;->snowfallButton:Landroid/view/MenuItem;

    const v0, 0x7f0800d3

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/offsec/nethunter/NetHunterFragment;->snowfallButton:Landroid/view/MenuItem;

    const v0, 0x7f0800d4

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :goto_1
    new-instance p1, Lcom/offsec/nethunter/NetHunterFragment$1;

    invoke-direct {p1, p0}, Lcom/offsec/nethunter/NetHunterFragment$1;-><init>(Lcom/offsec/nethunter/NetHunterFragment;)V

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0098

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->refreshButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->addButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->deleteButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->moveButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->nethunterRecyclerViewAdapter:Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0c009a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090204

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090203

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const-string v4, "OK"

    const-string v5, "Cancel"

    const v6, 0x7f120117

    const-string v7, "/FragmentNethunter"

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "Full path of the db file from where you want to restore:"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_SQLBACKUP_PATH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v3, p0, Lcom/offsec/nethunter/NetHunterFragment;->activity:Landroid/app/Activity;

    invoke-direct {v1, v3, v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda21;-><init>()V

    invoke-virtual {v1, v5, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda23;-><init>()V

    invoke-virtual {v1, v4, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0, v0, v2}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda24;-><init>(Lcom/offsec/nethunter/NetHunterFragment;Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    goto :goto_0

    :sswitch_1
    const-string v3, "Full path to where you want to save the database:"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_SQLBACKUP_PATH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v3, p0, Lcom/offsec/nethunter/NetHunterFragment;->activity:Landroid/app/Activity;

    invoke-direct {v1, v3, v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda18;-><init>()V

    invoke-virtual {v1, v5, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda19;-><init>()V

    invoke-virtual {v1, v4, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, v0, v2}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda20;-><init>(Lcom/offsec/nethunter/NetHunterFragment;Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/offsec/nethunter/SQL/NethunterSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/NethunterSQL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->resetData(Lcom/offsec/nethunter/SQL/NethunterSQL;)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/offsec/nethunter/NetHunterFragment;->trigger_snowfall()V

    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :sswitch_data_0
    .sparse-switch
        0x7f090202 -> :sswitch_3
        0x7f09021e -> :sswitch_2
        0x7f09021f -> :sswitch_1
        0x7f090221 -> :sswitch_0
    .end sparse-switch
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->refreshData()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance p2, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p2, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/offsec/nethunter/viewmodels/NethunterViewModel;

    invoke-virtual {p2, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p2

    check-cast p2, Lcom/offsec/nethunter/viewmodels/NethunterViewModel;

    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/offsec/nethunter/viewmodels/NethunterViewModel;->init(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/offsec/nethunter/viewmodels/NethunterViewModel;->getLiveDataNethunterModelList()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/offsec/nethunter/NetHunterFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda12;-><init>(Lcom/offsec/nethunter/NetHunterFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    new-instance v0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;

    iget-object v1, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/offsec/nethunter/viewmodels/NethunterViewModel;->getLiveDataNethunterModelList()Landroidx/lifecycle/LiveData;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-direct {v0, v1, p2}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->nethunterRecyclerViewAdapter:Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;

    const p2, 0x7f090226

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->nethunterRecyclerViewAdapter:Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const p2, 0x7f090228

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/offsec/nethunter/NetHunterFragment;->refreshButton:Landroid/widget/Button;

    const p2, 0x7f090205

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/offsec/nethunter/NetHunterFragment;->addButton:Landroid/widget/Button;

    const p2, 0x7f090211

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/offsec/nethunter/NetHunterFragment;->deleteButton:Landroid/widget/Button;

    const p2, 0x7f090222

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/offsec/nethunter/NetHunterFragment;->moveButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/offsec/nethunter/NetHunterFragment;->onRefreshItemSetup()V

    invoke-direct {p0}, Lcom/offsec/nethunter/NetHunterFragment;->onAddItemSetup()V

    invoke-direct {p0}, Lcom/offsec/nethunter/NetHunterFragment;->onDeleteItemSetup()V

    invoke-direct {p0}, Lcom/offsec/nethunter/NetHunterFragment;->onMoveItemSetup()V

    const p2, 0x7f09020f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f09021d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/offsec/nethunter/NetHunterFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/offsec/nethunter/NetHunterFragment;->activity:Landroid/app/Activity;

    const-string v2, "com.offsec.nethunter"

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/NetHunterFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "running_on_wearos"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
