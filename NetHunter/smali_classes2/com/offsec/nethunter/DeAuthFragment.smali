.class public Lcom/offsec/nethunter/DeAuthFragment;
.super Landroidx/fragment/app/Fragment;
.source "DeAuthFragment.java"


# static fields
.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"


# instance fields
.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field private final exe:Lcom/offsec/nethunter/utils/ShellExecuter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/DeAuthFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    return-void
.end method

.method private isInRange(III)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p2, p1, :cond_0

    if-lt p3, p1, :cond_1

    if-gt p3, p2, :cond_1

    goto :goto_0

    :cond_0
    if-lt p3, p2, :cond_1

    if-gt p3, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/DeAuthFragment;
    .locals 3

    new-instance v0, Lcom/offsec/nethunter/DeAuthFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/DeAuthFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/DeAuthFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getmac(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/offsec/nethunter/DeAuthFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cat /sys/class/net/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/address"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$onCreateView$0$com-offsec-nethunter-DeAuthFragment(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    const/16 p3, 0xfa

    invoke-direct {p0, p2, p3, p1}, Lcom/offsec/nethunter/DeAuthFragment;->isInRange(III)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method synthetic lambda$onCreateView$1$com-offsec-nethunter-DeAuthFragment(Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 5
    # p1 = Spinner, p2 = CheckBox, p3 = EditText

    # Get the selected interface from the spinner
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v0

    # v1 will hold the command prefix (e.g., "airmon-ng start ...")
    # v2 will hold the final monitor interface name (e.g., "wlan1mon")
    move-object v2, v0
    const-string v1, ""

    # Check if the selected interface name ALREADY ends with "mon"
    const-string v3, "mon"
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v3

    # If it does NOT end with "mon", we need to build the airmon-ng command part
    if-nez v3, :cond_0

    # Build the prefix command: "airmon-ng start [interface] && sleep 3 && "
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "airmon-ng start "
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v3, " && sleep 3 && "
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1

    # And build the expected monitor interface name, e.g., "wlan1" -> "wlan1mon"
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "mon"
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2

    # If already in monitor mode, the prefix v1 remains empty and v2 is the selected interface.
    :cond_0

    # Check if the whitelist checkbox is checked
    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z
    move-result v0
    if-eqz v0, :cond_1
    const-string v0, "-w /sdcard/nh_files/deauth/whitelist.txt "
    goto :goto_0
    :cond_1
    const-string v0, ""
    :goto_0

    # Build the complete final command string by chaining all the parts
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    
    # 1. Append the prefix (airmon-ng part, or empty string if not needed)
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # 2. Append the main mdk3 command
    const-string v1, "echo Press Crtl+C to stop! && mdk3 "
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # 3. Append the correct monitor interface name
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    
    # 4. Append the rest of the mdk3 options
    const-string v1, " d "
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v0, "-c "
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
    move-result-object p1
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    
    # Convert the StringBuilder to the final command string
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1

    # Execute the single, complete command string
    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/DeAuthFragment;->run_cmd(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreateView$2$com-offsec-nethunter-DeAuthFragment(Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 4

    const-string p3, "cat "

    const-string v0, "ip link set "

    new-instance v1, Lcom/offsec/nethunter/utils/BootKali;

    const-string v2, "cp /sdcard/nh_files/deauth/scan.sh /root/scan.sh && chmod +x /root/scan.sh"

    invoke-direct {v1, v2}, Lcom/offsec/nethunter/utils/BootKali;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/offsec/nethunter/utils/BootKali;->run_bg()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "./root/scan.sh "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | tr -s [:space:] > /sdcard/nh_files/deauth/output.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Lcom/offsec/nethunter/utils/BootKali;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " up"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/offsec/nethunter/utils/BootKali;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    new-instance p1, Lcom/offsec/nethunter/utils/BootKali;

    invoke-direct {p1, v1}, Lcom/offsec/nethunter/utils/BootKali;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/offsec/nethunter/utils/BootKali;->run_bg()V

    const-wide/16 v0, 0x1388

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object p1, p0, Lcom/offsec/nethunter/DeAuthFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/deauth/output.txt"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "Channel:"

    const-string v0, "\n Channel:"

    invoke-virtual {p1, p3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method synthetic lambda$onCreateView$3$com-offsec-nethunter-DeAuthFragment(Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object p1, p0, Lcom/offsec/nethunter/DeAuthFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "grep -q "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/offsec/nethunter/DeAuthFragment;->getmac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " \""

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/deauth/whitelist.txt\" && echo $?"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "0"

    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {p2, p1}, Landroid/widget/CheckBox;->setClickable(Z)V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$4$com-offsec-nethunter-DeAuthFragment(Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const-string p2, "/deauth/whitelist.txt"

    const-string p4, "wlan0"

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "\' >> "

    const-string v1, "echo \'"

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/DeAuthFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/offsec/nethunter/DeAuthFragment;->getmac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p4, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/offsec/nethunter/DeAuthFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/offsec/nethunter/DeAuthFragment;->getmac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/offsec/nethunter/DeAuthFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string p4, "sed -i \'/wlan0/d\' /sdcard/nh_files/deauth/whitelist.txt"

    invoke-virtual {p1, p4}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    iget-object p1, p0, Lcom/offsec/nethunter/DeAuthFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "sed -i \'/"

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/offsec/nethunter/DeAuthFragment;->getmac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/d\' "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/DeAuthFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/DeAuthFragment;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/offsec/nethunter/DeAuthFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/DeAuthFragment;->activity:Landroid/app/Activity;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0d0004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    const p3, 0x7f0c003b
    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    move-result-object p1

    iget-object p2, p0, Lcom/offsec/nethunter/DeAuthFragment;->context:Landroid/content/Context;

    const-string p3, "com.offsec.nethunter"

    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/offsec/nethunter/DeAuthFragment;->setHasOptionsMenu(Z)V

    const p3, 0x7f0903c4
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    const v1, 0x7f0904e5
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    # =================== START OF MODIFIED BLOCK ===================

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/offsec/nethunter/DeAuthFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;
    const-string v4, "ls /sys/class/net/"
    invoke-virtual {v3, v4}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3

    const-string v4, "\n"
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v3

    array-length v4, v3
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v6

    const-string v7, "wlan"
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1
    goto :goto_0

    :cond_1
    new-instance v3, Landroid/widget/ArrayAdapter;
    invoke-virtual {p0}, Lcom/offsec/nethunter/DeAuthFragment;->requireContext()Landroid/content/Context;
    move-result-object v4
    const v5, 0x1090008
    invoke-direct {v3, v4, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v2, 0x1090009
    invoke-virtual {v3, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    # =================== END OF MODIFIED BLOCK ===================

    :goto_1
    const v2, 0x7f09002a
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const v3, 0x7f090027
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v4, 0x7f090139
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    const v5, 0x7f090135
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    const v6, 0x7f0900fc
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    new-array p2, p2, [Landroid/text/InputFilter;

    new-instance v7, Lcom/offsec/nethunter/DeAuthFragment$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Lcom/offsec/nethunter/DeAuthFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/DeAuthFragment;)V

    aput-object v7, p2, v0

    invoke-virtual {v6, p2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance p2, Lcom/offsec/nethunter/DeAuthFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, v1, v4, v6}, Lcom/offsec/nethunter/DeAuthFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/DeAuthFragment;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/widget/EditText;)V

    invoke-virtual {v3, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lcom/offsec/nethunter/DeAuthFragment$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, v1, v2}, Lcom/offsec/nethunter/DeAuthFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/DeAuthFragment;Landroid/widget/Spinner;Landroid/widget/EditText;)V

    invoke-virtual {p3, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lcom/offsec/nethunter/DeAuthFragment$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, v4, v5, v1}, Lcom/offsec/nethunter/DeAuthFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/DeAuthFragment;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/Spinner;)V

    invoke-virtual {v4, p2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lcom/offsec/nethunter/DeAuthFragment$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, v4, v5, v1}, Lcom/offsec/nethunter/DeAuthFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/DeAuthFragment;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/Spinner;)V

    invoke-virtual {v5, p2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090137

    if-ne v0, v1, :cond_0

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/offsec/nethunter/DeAuthFragment;->activity:Landroid/app/Activity;

    const-class v1, Lcom/offsec/nethunter/DeAuthWhitelistActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/DeAuthFragment;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public run_cmd(Ljava/lang/String;)V
    .locals 1

    const-string v0, "/data/data/com.offsec.nhterm/files/usr/bin/kali"

    invoke-static {v0, p1}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/offsec/nethunter/DeAuthFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
