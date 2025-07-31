.class public Lcom/offsec/nethunter/BtDuckyFragment;
.super Lcom/offsec/nethunter/BTFragment;
.source "BtDuckyFragment.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final PICK_FILE_REQUEST_CODE:I = 0x1

.field private static final SAVE_FILE_REQUEST_CODE:I = 0x2


# instance fields
.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field private editSource:Landroid/widget/EditText;

.field final tmpfilePath:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgeteditSource(Lcom/offsec/nethunter/BtDuckyFragment;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/offsec/nethunter/BtDuckyFragment;->editSource:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mreadFileContent(Lcom/offsec/nethunter/BtDuckyFragment;Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/BtDuckyFragment;->readFileContent(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/offsec/nethunter/BTFragment;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/nh_files/.tmpbtdfile.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/BtDuckyFragment;->tmpfilePath:Ljava/lang/String;

    return-void
.end method

.method private getDuckyScriptFiles()[Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/duckyscripts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-array v1, v3, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$saveFile$4(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private openFile()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/offsec/nethunter/BtDuckyFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private readFileContent(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/BtDuckyFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    invoke-virtual {p0}, Lcom/offsec/nethunter/BtDuckyFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "Error reading file"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private saveContentToFile(Landroid/net/Uri;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/BtDuckyFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p1

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iget-object v2, p0, Lcom/offsec/nethunter/BtDuckyFragment;->editSource:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p0}, Lcom/offsec/nethunter/BtDuckyFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "File saved"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    invoke-virtual {p0}, Lcom/offsec/nethunter/BtDuckyFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "Error saving file"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreateView$0$com-offsec-nethunter-BtDuckyFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/offsec/nethunter/BtDuckyFragment;->openFile()V

    return-void
.end method

.method synthetic lambda$onCreateView$1$com-offsec-nethunter-BtDuckyFragment(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/BtDuckyFragment;->saveFile(Z)V

    return-void
.end method

.method synthetic lambda$onCreateView$2$com-offsec-nethunter-BtDuckyFragment(Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/view/View;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/bootkali custom_cmd bluetoothctl info | grep \'Connected: yes\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Connected: yes"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/offsec/nethunter/BtDuckyFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Start the server first"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/BtDuckyFragment;->saveFile(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "python3 /root/badbt/ducky.py -d "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/offsec/nethunter/BtDuckyFragment;->tmpfilePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; exit"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/BtDuckyFragment;->run_cmd(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$saveFile$3$com-offsec-nethunter-BtDuckyFragment(Landroid/widget/EditText;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    new-instance p3, Ljava/io/File;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".conf"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/BtDuckyFragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/BtDuckyFragment;->saveContentToFile(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/offsec/nethunter/BtDuckyFragment;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/offsec/nethunter/BtDuckyFragment;->context:Landroid/content/Context;

    const-string p2, "File already exists"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/offsec/nethunter/BtDuckyFragment;->context:Landroid/content/Context;

    const-string p2, "Wrong name provided"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/offsec/nethunter/BTFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/BtDuckyFragment;->saveContentToFile(Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/BtDuckyFragment;->readFileContent(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/offsec/nethunter/BtDuckyFragment;->editSource:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/offsec/nethunter/BTFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/BtDuckyFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/BtDuckyFragment;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/offsec/nethunter/BtDuckyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/BtDuckyFragment;->activity:Landroid/app/Activity;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const p3, 0x7f0c0022

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090174

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    const p3, 0x7f090175

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    const v0, 0x7f090173

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f09017b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/offsec/nethunter/BtDuckyFragment;->editSource:Landroid/widget/EditText;

    new-instance v1, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v1}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    invoke-direct {p0}, Lcom/offsec/nethunter/BtDuckyFragment;->getDuckyScriptFiles()[Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090172

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/BtDuckyFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const v6, 0x1090008

    invoke-direct {v4, v5, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v2, 0x1090009

    invoke-virtual {v4, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance v2, Lcom/offsec/nethunter/BtDuckyFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/offsec/nethunter/BtDuckyFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/BtDuckyFragment;)V

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lcom/offsec/nethunter/BtDuckyFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/offsec/nethunter/BtDuckyFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/BtDuckyFragment;)V

    invoke-virtual {p3, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lcom/offsec/nethunter/BtDuckyFragment$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, v1}, Lcom/offsec/nethunter/BtDuckyFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/BtDuckyFragment;Lcom/offsec/nethunter/utils/ShellExecuter;)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lcom/offsec/nethunter/BtDuckyFragment$1;

    invoke-direct {p2, p0}, Lcom/offsec/nethunter/BtDuckyFragment$1;-><init>(Lcom/offsec/nethunter/BtDuckyFragment;)V

    invoke-virtual {v3, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-object p1
.end method

.method public saveFile(Z)V
    .locals 4

    iget-object v0, p0, Lcom/offsec/nethunter/BtDuckyFragment;->editSource:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    const-string v0, "/scripts/ducky/"

    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/offsec/nethunter/BtDuckyFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/BtDuckyFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f120117

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v2, "Name"

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const-string v2, "Please enter a name for your script."

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v2, Landroid/widget/EditText;

    iget-object v3, p0, Lcom/offsec/nethunter/BtDuckyFragment;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v3, Lcom/offsec/nethunter/BtDuckyFragment$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v2, v0}, Lcom/offsec/nethunter/BtDuckyFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/BtDuckyFragment;Landroid/widget/EditText;Ljava/lang/String;)V

    const-string v0, "Ok"

    invoke-virtual {v1, v0, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    new-instance v0, Lcom/offsec/nethunter/BtDuckyFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/offsec/nethunter/BtDuckyFragment$$ExternalSyntheticLambda4;-><init>()V

    const-string v2, "Cancel"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    if-eqz p1, :cond_1

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/offsec/nethunter/BtDuckyFragment;->tmpfilePath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/BtDuckyFragment;->saveContentToFile(Landroid/net/Uri;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    :goto_1
    return-void
.end method
