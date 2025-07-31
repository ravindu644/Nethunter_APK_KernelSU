.class public Lcom/offsec/nethunter/BTFragment$BadBtFragment;
.super Lcom/offsec/nethunter/BTFragment;
.source "BTFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/BTFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BadBtFragment"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field prefixCMD:Ljava/lang/String;

.field private selected_badbt_class:Ljava/lang/String;

.field private selected_badbtmode:Ljava/lang/String;

.field private selected_prefix:Ljava/lang/String;

.field private selected_preset:Ljava/lang/String;

.field private selected_preset_uac:Ljava/lang/String;

.field uacCMD:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetselected_badbtmode(Lcom/offsec/nethunter/BTFragment$BadBtFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->selected_badbtmode:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselected_prefix(Lcom/offsec/nethunter/BTFragment$BadBtFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->selected_prefix:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselected_preset(Lcom/offsec/nethunter/BTFragment$BadBtFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->selected_preset:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselected_preset_uac(Lcom/offsec/nethunter/BTFragment$BadBtFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->selected_preset_uac:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputselected_badbtmode(Lcom/offsec/nethunter/BTFragment$BadBtFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->selected_badbtmode:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputselected_prefix(Lcom/offsec/nethunter/BTFragment$BadBtFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->selected_prefix:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputselected_preset(Lcom/offsec/nethunter/BTFragment$BadBtFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->selected_preset:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputselected_preset_uac(Lcom/offsec/nethunter/BTFragment$BadBtFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->selected_preset_uac:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/offsec/nethunter/BTFragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->prefixCMD:Ljava/lang/String;

    iput-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->uacCMD:Ljava/lang/String;

    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    return-void
.end method

.method static synthetic lambda$onCreateView$6(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private refresh_badbt(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f09000c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090099

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iget-object v1, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->context:Landroid/content/Context;

    const-string v2, "com.offsec.nethunter"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/offsec/nethunter/BTFragment$BadBtFragment$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v0, p1}, Lcom/offsec/nethunter/BTFragment$BadBtFragment$$ExternalSyntheticLambda8;-><init>(Lcom/offsec/nethunter/BTFragment$BadBtFragment;Landroid/widget/TextView;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreateView$1$com-offsec-nethunter-BTFragment$BadBtFragment(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->refresh_badbt(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$onCreateView$2$com-offsec-nethunter-BTFragment$BadBtFragment(Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/SharedPreferences;Landroid/view/View;Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p8

    const-string v0, "Start"

    invoke-virtual {p8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p8

    if-eqz p8, :cond_2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance p8, Ljava/lang/StringBuilder;

    invoke-direct {p8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {p8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/bootkali custom_cmd service dbus status | grep dbus"

    invoke-virtual {p8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p8

    invoke-virtual {p5, p8}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    iget-object p8, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/bootkali custom_cmd service bluetooth status | grep bluetooth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p8, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p8

    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/bootkali custom_cmd hciconfig | grep hci"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "badbt-name"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {p6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "badbt-iface"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {p6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "badbt-bdaddr"

    invoke-interface {v1, v2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {p6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p6

    const-string v1, "badbt-class"

    invoke-interface {p6, v1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p6

    invoke-interface {p6}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p6, "dbus is running."

    invoke-virtual {p5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_1

    const-string p5, "bluetooth is running."

    invoke-virtual {p8, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p5

    const/4 p6, 0x0

    if-nez p5, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_0

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p5

    invoke-virtual {p5}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p5

    const-string p8, "Starting server..."

    invoke-static {p5, p8, p6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p5

    invoke-virtual {p5}, Landroid/widget/Toast;->show()V

    new-instance p5, Ljava/lang/StringBuilder;

    const-string p6, "echo -ne \"\\033]0;BadBT Server\\007\" && clear;python3 /root/badbt/btk_server.py -n \'"

    invoke-direct {p5, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' -i "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -c "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -a "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&;sleep 1 && echo \'Starting agent...\' && sleep 1 && bluetoothctl --agent NoInputNoOutput && exit"

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->run_cmd(Ljava/lang/String;)V

    invoke-direct {p0, p7}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->refresh_badbt(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Please enter interface, keyboard name, and address!"

    invoke-static {p1, p2, p6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Bluetooth interface or service not running!"

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const-string p2, "Stop"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string p2, "kill `ps -ef | grep \'[btk]_server\' | awk {\'print $2\'}`"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string p2, "pkill bluetoothctl"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    invoke-direct {p0, p7}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->refresh_badbt(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$3$com-offsec-nethunter-BTFragment$BadBtFragment(Landroid/widget/CheckBox;Landroid/widget/Spinner;Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const p4, 0x1090003

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/widget/Spinner;->setVisibility(I)V

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    const-string p1, "Windows 7"

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "Windows 8"

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "Windows 10"

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "Windows 11"

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p4, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p2, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    const-string p1, "None"

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p4, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p2, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/16 p1, 0x8

    invoke-virtual {p2, p1}, Landroid/widget/Spinner;->setVisibility(I)V

    const-string p1, "-"

    iput-object p1, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->uacCMD:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$4$com-offsec-nethunter-BTFragment$BadBtFragment(Landroid/view/View;)V
    .locals 1

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.category.OPENABLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "text/*"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Select text file"

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x3ea

    invoke-virtual {p0, p1, v0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$onCreateView$5$com-offsec-nethunter-BTFragment$BadBtFragment(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p1, "echo -ne \"\\033]0;BadBT Client\\007\" && clear;python3 /root/badbt/kb_client.py"

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->run_cmd(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Starting keyboard client.."

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$onCreateView$7$com-offsec-nethunter-BTFragment$BadBtFragment(Landroid/widget/EditText;Landroid/view/View;)V
    .locals 1

    iget-object p2, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->selected_badbtmode:Ljava/lang/String;

    const-string v0, "Send strings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "echo -ne \"\\033]0;BadBT Send Strings\\007\" && clear;python3 /root/badbt/send_string.py \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->prefixCMD:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->uacCMD:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";sleep 2 && echo \'Exiting..\' && exit"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->run_cmd(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Sending strings.."

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->selected_badbtmode:Ljava/lang/String;

    const-string p2, "Interactive"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const v0, 0x7f120117

    invoke-direct {p1, p2, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string p2, "Are you sure?"

    invoke-virtual {p1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const-string p2, "Interactive mode will run in NetHunter terminal, but needs a physical keyboard connected as of now."

    invoke-virtual {p1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance p2, Lcom/offsec/nethunter/BTFragment$BadBtFragment$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/BTFragment$BadBtFragment;)V

    const-string v0, "Ok"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance p2, Lcom/offsec/nethunter/BTFragment$BadBtFragment$$ExternalSyntheticLambda6;

    invoke-direct {p2}, Lcom/offsec/nethunter/BTFragment$BadBtFragment$$ExternalSyntheticLambda6;-><init>()V

    const-string v0, "Cancel"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$onResume$0$com-offsec-nethunter-BTFragment$BadBtFragment()V
    .locals 1

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->requireView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->refresh_badbt(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$refresh_badbt$8$com-offsec-nethunter-BTFragment$BadBtFragment(Landroid/widget/TextView;Landroid/widget/Button;)V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v1, "ps -ef | grep btk_server"

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "btk_server.py"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f11004a

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f110048

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f110044

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f110049

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setText(I)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/offsec/nethunter/BTFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->context:Landroid/content/Context;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 16

    move-object/from16 v9, p0

    const v0, 0x7f0c0020

    const/4 v1, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v2, v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    const v0, 0x7f090099

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/Button;

    iget-object v0, v9, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->context:Landroid/content/Context;

    const-string v2, "com.offsec.nethunter"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f09008f

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    const v0, 0x7f090090

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/EditText;

    const v0, 0x7f090091

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/EditText;

    const v0, 0x7f09008c

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/EditText;

    const v0, 0x7f09008d

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/EditText;

    const v0, 0x7f09008e

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "Keyboard"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Headset"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Speaker"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Mouse"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Printer"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "PC"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Mobile"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Custom"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->requireContext()Landroid/content/Context;

    move-result-object v8

    const v12, 0x1090003

    invoke-direct {v2, v8, v12, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance v1, Lcom/offsec/nethunter/BTFragment$BadBtFragment$1;

    invoke-direct {v1, v9, v6}, Lcom/offsec/nethunter/BTFragment$BadBtFragment$1;-><init>(Lcom/offsec/nethunter/BTFragment$BadBtFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-direct {v9, v10}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->refresh_badbt(Landroid/view/View;)V

    const-string v0, "badbt-name"

    const-string v1, ""

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const-string v0, "badbt-iface"

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const-string v0, "badbt-bdaddr"

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const-string v0, "badbt-class"

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    const v0, 0x7f09039f

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lcom/offsec/nethunter/BTFragment$BadBtFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, v9, v10}, Lcom/offsec/nethunter/BTFragment$BadBtFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/BTFragment$BadBtFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v13, 0x7f09017a

    invoke-virtual {v10, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/EditText;

    new-instance v15, Lcom/offsec/nethunter/BTFragment$BadBtFragment$$ExternalSyntheticLambda1;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Lcom/offsec/nethunter/BTFragment$BadBtFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/BTFragment$BadBtFragment;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/SharedPreferences;Landroid/view/View;)V

    invoke-virtual {v11, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090093

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    const v1, 0x7f09009a

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "Send strings"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "Interactive"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v12, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance v2, Lcom/offsec/nethunter/BTFragment$BadBtFragment$2;

    invoke-direct {v2, v9, v1}, Lcom/offsec/nethunter/BTFragment$BadBtFragment$2;-><init>(Lcom/offsec/nethunter/BTFragment$BadBtFragment;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v0, 0x7f0904b0

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/CheckBox;

    const v0, 0x7f09009b

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f090094

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/Spinner;

    const v0, 0x7f090098

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/Spinner;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "Mobile Home"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Mobile Browser"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Windows CMD"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Mac Terminal"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Linux Terminal"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v15, "None"

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v12, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v7, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance v5, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v4, v11

    move-object v12, v5

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;-><init>(Lcom/offsec/nethunter/BTFragment$BadBtFragment;Landroid/view/View;Landroid/widget/CheckBox;Ljava/util/ArrayList;Landroid/widget/Spinner;)V

    invoke-virtual {v7, v12}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v0, 0x7f090097

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v10, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "Rickroll"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "Fake Windows Update"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1090003

    invoke-direct {v3, v4, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance v2, Lcom/offsec/nethunter/BTFragment$BadBtFragment$4;

    invoke-direct {v2, v9, v1}, Lcom/offsec/nethunter/BTFragment$BadBtFragment$4;-><init>(Lcom/offsec/nethunter/BTFragment$BadBtFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance v0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, v9, v6, v8, v11}, Lcom/offsec/nethunter/BTFragment$BadBtFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/BTFragment$BadBtFragment;Landroid/widget/CheckBox;Landroid/widget/Spinner;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$5;

    invoke-direct {v0, v9}, Lcom/offsec/nethunter/BTFragment$BadBtFragment$5;-><init>(Lcom/offsec/nethunter/BTFragment$BadBtFragment;)V

    invoke-virtual {v8, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v0, 0x7f0902af

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/BTFragment$BadBtFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, v9}, Lcom/offsec/nethunter/BTFragment$BadBtFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/BTFragment$BadBtFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090422

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/BTFragment$BadBtFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, v9, v14}, Lcom/offsec/nethunter/BTFragment$BadBtFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/BTFragment$BadBtFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v10
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/offsec/nethunter/BTFragment;->onResume()V

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Status updated"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/BTFragment$BadBtFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/BTFragment$BadBtFragment;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
