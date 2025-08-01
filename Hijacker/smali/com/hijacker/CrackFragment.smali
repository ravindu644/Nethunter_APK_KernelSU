.class public Lcom/hijacker/CrackFragment;
.super Landroid/app/Fragment;
.source "CrackFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hijacker/CrackFragment$CrackTask;
    }
.end annotation


# static fields
.field static final WEP:I = 0x1

.field static final WPA:I = 0x2

.field static capfile_text:Ljava/lang/String; = null

.field static console_text:Ljava/lang/String; = ""

.field static pref:Landroid/content/SharedPreferences; = null

.field static securityChecked:I = -0x1

.field static task:Lcom/hijacker/CrackFragment$CrackTask; = null

.field static wepChecked:I = -0x1

.field static wordlist_text:Ljava/lang/String;


# instance fields
.field capFeBtn:Landroid/widget/Button;

.field capfileView:Landroid/widget/EditText;

.field consoleScrollView:Landroid/widget/ScrollView;

.field consoleView:Landroid/widget/TextView;

.field crackScrollView:Landroid/widget/ScrollView;

.field fragmentView:Landroid/view/View;

.field normalOptHeight:I

.field normalTestBtnWidth:I

.field optionsContainer:Landroid/view/View;

.field securityRG:Landroid/widget/RadioGroup;

.field speedTestBtn:Landroid/widget/Button;

.field startBtn:Landroid/widget/Button;

.field wepRB:Landroid/widget/RadioButton;

.field wepRG:Landroid/widget/RadioGroup;

.field wordlistDownloadBtn:Landroid/widget/ImageButton;

.field wordlistFeBtn:Landroid/widget/Button;

.field wordlistView:Landroid/widget/EditText;

.field wpaRB:Landroid/widget/RadioButton;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/hijacker/CrackFragment;->normalOptHeight:I

    iput v0, p0, Lcom/hijacker/CrackFragment;->normalTestBtnWidth:I

    return-void
.end method

.method static isRunning()Z
    .locals 3

    sget-object v0, Lcom/hijacker/CrackFragment;->task:Lcom/hijacker/CrackFragment$CrackTask;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/hijacker/CrackFragment$CrackTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method static stopCracking()V
    .locals 2

    sget-object v0, Lcom/hijacker/CrackFragment;->task:Lcom/hijacker/CrackFragment$CrackTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hijacker/CrackFragment$CrackTask;->cancel(Z)Z

    :cond_0
    return-void
.end method


# virtual methods
.method attemptStart()V
    .locals 5

    iget-object v0, p0, Lcom/hijacker/CrackFragment;->capfileView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/CrackFragment;->wordlistView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/CrackFragment;->capfileView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hijacker/CrackFragment;->wordlistView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v0, p0, Lcom/hijacker/CrackFragment;->capfileView:Landroid/widget/EditText;

    const v1, 0x7f100043

    invoke-virtual {p0, v1}, Lcom/hijacker/CrackFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/CrackFragment;->capfileView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    :cond_0
    new-instance v3, Lcom/hijacker/RootFile;

    invoke-direct {v3, v0}, Lcom/hijacker/RootFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/hijacker/RootFile;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Lcom/hijacker/RootFile;->isFile()Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v3, p0, Lcom/hijacker/CrackFragment;->wpaRB:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/hijacker/CrackFragment;->wordlistView:Landroid/widget/EditText;

    const v1, 0x7f100194

    invoke-virtual {p0, v1}, Lcom/hijacker/CrackFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/CrackFragment;->wordlistView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    :cond_2
    new-instance v2, Lcom/hijacker/RootFile;

    invoke-direct {v2, v1}, Lcom/hijacker/RootFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/hijacker/RootFile;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/hijacker/RootFile;->isFile()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/hijacker/CrackFragment;->wordlistView:Landroid/widget/EditText;

    const v1, 0x7f100195

    invoke-virtual {p0, v1}, Lcom/hijacker/CrackFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/CrackFragment;->wordlistView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    :cond_4
    iget-object v2, p0, Lcom/hijacker/CrackFragment;->securityRG:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    const v4, 0x7f0901db

    if-eq v2, v4, :cond_5

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/hijacker/CrackFragment;->wepRG:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    if-ne v2, v3, :cond_6

    iget-object v0, p0, Lcom/hijacker/CrackFragment;->fragmentView:Landroid/view/View;

    const v1, 0x7f100153

    invoke-virtual {p0, v1}, Lcom/hijacker/CrackFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void

    :cond_6
    :goto_0
    new-instance v2, Lcom/hijacker/CrackFragment$CrackTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/hijacker/CrackFragment$CrackTask;-><init>(Lcom/hijacker/CrackFragment;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/hijacker/CrackFragment;->task:Lcom/hijacker/CrackFragment$CrackTask;

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v0, v1}, Lcom/hijacker/CrackFragment$CrackTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_7
    iget-object v0, p0, Lcom/hijacker/CrackFragment;->fragmentView:Landroid/view/View;

    const v1, 0x7f100154

    invoke-virtual {p0, v1}, Lcom/hijacker/CrackFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void

    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/hijacker/CrackFragment;->capfileView:Landroid/widget/EditText;

    const v1, 0x7f100042

    invoke-virtual {p0, v1}, Lcom/hijacker/CrackFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/CrackFragment;->capfileView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    const/4 p3, 0x0

    const v0, 0x7f0c0020

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hijacker/CrackFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f09013f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hijacker/CrackFragment;->optionsContainer:Landroid/view/View;

    iget-object p1, p0, Lcom/hijacker/CrackFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f090089

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/hijacker/CrackFragment;->consoleView:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/hijacker/CrackFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f09008a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    iput-object p1, p0, Lcom/hijacker/CrackFragment;->consoleScrollView:Landroid/widget/ScrollView;

    iget-object p1, p0, Lcom/hijacker/CrackFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f090094

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    iput-object p1, p0, Lcom/hijacker/CrackFragment;->crackScrollView:Landroid/widget/ScrollView;

    iget-object p1, p0, Lcom/hijacker/CrackFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f090060

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/hijacker/CrackFragment;->capfileView:Landroid/widget/EditText;

    iget-object p1, p0, Lcom/hijacker/CrackFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f0901e0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/hijacker/CrackFragment;->wordlistView:Landroid/widget/EditText;

    iget-object p1, p0, Lcom/hijacker/CrackFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f09005f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/hijacker/CrackFragment;->capFeBtn:Landroid/widget/Button;

    iget-object p1, p0, Lcom/hijacker/CrackFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f0901e2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/hijacker/CrackFragment;->wordlistFeBtn:Landroid/widget/Button;

    iget-object p1, p0, Lcom/hijacker/CrackFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f0901e1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/hijacker/CrackFragment;->wordlistDownloadBtn:Landroid/widget/ImageButton;

    iget-object p1, p0, Lcom/hijacker/CrackFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f0901dc

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/hijacker/CrackFragment;->wepRG:Landroid/widget/RadioGroup;

    iget-object p1, p0, Lcom/hijacker/CrackFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f090156

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/hijacker/CrackFragment;->securityRG:Landroid/widget/RadioGroup;

    iget-object p1, p0, Lcom/hijacker/CrackFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f0901db

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/hijacker/CrackFragment;->wepRB:Landroid/widget/RadioButton;

    iget-object p1, p0, Lcom/hijacker/CrackFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f0901e5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/hijacker/CrackFragment;->wpaRB:Landroid/widget/RadioButton;

    iget-object p1, p0, Lcom/hijacker/CrackFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f09019a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/hijacker/CrackFragment;->startBtn:Landroid/widget/Button;

    iget-object p1, p0, Lcom/hijacker/CrackFragment;->fragmentView:Landroid/view/View;

    const p2, 0x7f09018e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/hijacker/CrackFragment;->speedTestBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/hijacker/CrackFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    sput-object p1, Lcom/hijacker/CrackFragment;->pref:Landroid/content/SharedPreferences;

    const-string p2, "running_on_wearos"

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/16 p2, 0x8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hijacker/CrackFragment;->speedTestBtn:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/hijacker/CrackFragment;->capfileView:Landroid/widget/EditText;

    new-instance v0, Lcom/hijacker/CrackFragment$1;

    invoke-direct {v0, p0}, Lcom/hijacker/CrackFragment$1;-><init>(Lcom/hijacker/CrackFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/hijacker/CrackFragment;->wepRG:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/hijacker/CrackFragment;->wepRG:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p2}, Landroid/widget/RadioGroup;->setVisibility(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/hijacker/CrackFragment;->task:Lcom/hijacker/CrackFragment$CrackTask;

    const/4 p2, 0x0

    if-nez p1, :cond_2

    new-instance p1, Lcom/hijacker/CrackFragment$CrackTask;

    invoke-direct {p1, p0, p3, p2, p2}, Lcom/hijacker/CrackFragment$CrackTask;-><init>(Lcom/hijacker/CrackFragment;ILjava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/hijacker/CrackFragment;->task:Lcom/hijacker/CrackFragment$CrackTask;

    :cond_2
    iget-object p1, p0, Lcom/hijacker/CrackFragment;->wepRB:Landroid/widget/RadioButton;

    new-instance v0, Lcom/hijacker/CrackFragment$2;

    invoke-direct {v0, p0}, Lcom/hijacker/CrackFragment$2;-><init>(Lcom/hijacker/CrackFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/hijacker/CrackFragment;->startBtn:Landroid/widget/Button;

    new-instance v0, Lcom/hijacker/CrackFragment$3;

    invoke-direct {v0, p0}, Lcom/hijacker/CrackFragment$3;-><init>(Lcom/hijacker/CrackFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/hijacker/CrackFragment;->speedTestBtn:Landroid/widget/Button;

    new-instance v0, Lcom/hijacker/CrackFragment$4;

    invoke-direct {v0, p0}, Lcom/hijacker/CrackFragment$4;-><init>(Lcom/hijacker/CrackFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/hijacker/CrackFragment;->capFeBtn:Landroid/widget/Button;

    new-instance v0, Lcom/hijacker/CrackFragment$5;

    invoke-direct {v0, p0}, Lcom/hijacker/CrackFragment$5;-><init>(Lcom/hijacker/CrackFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/hijacker/CrackFragment;->wordlistFeBtn:Landroid/widget/Button;

    new-instance v0, Lcom/hijacker/CrackFragment$6;

    invoke-direct {v0, p0}, Lcom/hijacker/CrackFragment$6;-><init>(Lcom/hijacker/CrackFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/hijacker/CrackFragment;->wordlistDownloadBtn:Landroid/widget/ImageButton;

    new-instance v0, Lcom/hijacker/CrackFragment$7;

    invoke-direct {v0, p0}, Lcom/hijacker/CrackFragment$7;-><init>(Lcom/hijacker/CrackFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p1, Lcom/hijacker/CrackFragment;->capfile_text:Ljava/lang/String;

    const-wide/16 v0, 0x0

    if-nez p1, :cond_5

    new-instance p1, Ljava/io/File;

    sget-object v2, Lcom/hijacker/MainActivity;->cap_path:Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/hijacker/CrackFragment$8;

    invoke-direct {v2, p0}, Lcom/hijacker/CrackFragment$8;-><init>(Lcom/hijacker/CrackFragment;)V

    invoke-virtual {p1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_5

    array-length v2, p1

    move-object v4, p2

    move-wide v5, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v7, p1, v3

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v10, v8, v5

    if-lez v10, :cond_3

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    move-object v4, v7

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_5

    iget-object p1, p0, Lcom/hijacker/CrackFragment;->capfileView:Landroid/widget/EditText;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    sget-object p1, Lcom/hijacker/CrackFragment;->wordlist_text:Ljava/lang/String;

    if-nez p1, :cond_8

    new-instance p1, Ljava/io/File;

    sget-object v2, Lcom/hijacker/MainActivity;->wl_path:Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_7

    array-length v2, p1

    :goto_2
    if-ge p3, v2, :cond_7

    aget-object v3, p1, p3

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_6

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    move-object p2, v3

    :cond_6
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_7
    if-eqz p2, :cond_8

    iget-object p1, p0, Lcom/hijacker/CrackFragment;->wordlistView:Landroid/widget/EditText;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    iget-object p1, p0, Lcom/hijacker/CrackFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/hijacker/CrackFragment;->consoleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hijacker/CrackFragment;->console_text:Ljava/lang/String;

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    const v0, 0x7f09012a

    sput v0, Lcom/hijacker/MainActivity;->currentFragment:I

    invoke-virtual {p0}, Lcom/hijacker/CrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/hijacker/MainActivity;

    invoke-virtual {v0}, Lcom/hijacker/MainActivity;->refreshDrawer()V

    iget-object v0, p0, Lcom/hijacker/CrackFragment;->consoleView:Landroid/widget/TextView;

    sget-object v1, Lcom/hijacker/CrackFragment;->console_text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/CrackFragment;->consoleView:Landroid/widget/TextView;

    new-instance v1, Lcom/hijacker/CrackFragment$9;

    invoke-direct {v1, p0}, Lcom/hijacker/CrackFragment$9;-><init>(Lcom/hijacker/CrackFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStart()V
    .locals 5

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    sget-object v0, Lcom/hijacker/CrackFragment;->capfile_text:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hijacker/CrackFragment;->capfileView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    sget-object v0, Lcom/hijacker/CrackFragment;->wordlist_text:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/hijacker/CrackFragment;->wordlistView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    sget v0, Lcom/hijacker/CrackFragment;->securityChecked:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v2, p0, Lcom/hijacker/CrackFragment;->securityRG:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v0}, Landroid/widget/RadioGroup;->check(I)V

    :cond_2
    sget v0, Lcom/hijacker/CrackFragment;->wepChecked:I

    if-eq v0, v1, :cond_3

    iget-object v2, p0, Lcom/hijacker/CrackFragment;->wepRG:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v0}, Landroid/widget/RadioGroup;->check(I)V

    :cond_3
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/hijacker/CrackFragment;->wepRG:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcom/hijacker/CrackFragment;->wepRG:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/hijacker/CrackFragment;->wepRB:Landroid/widget/RadioButton;

    invoke-virtual {v4}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/hijacker/CrackFragment;->wordlistView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/hijacker/CrackFragment;->wepRB:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v2, p0, Lcom/hijacker/CrackFragment;->startBtn:Landroid/widget/Button;

    invoke-static {}, Lcom/hijacker/CrackFragment;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_5

    const v3, 0x7f100174

    goto :goto_1

    :cond_5
    const v3, 0x7f10016b

    :goto_1
    invoke-virtual {p0, v3}, Lcom/hijacker/CrackFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/hijacker/CrackFragment;->task:Lcom/hijacker/CrackFragment$CrackTask;

    invoke-virtual {v2}, Lcom/hijacker/CrackFragment$CrackTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v2, v3, :cond_6

    iget-object v1, p0, Lcom/hijacker/CrackFragment;->optionsContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/hijacker/CrackFragment;->optionsContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/hijacker/CrackFragment;->speedTestBtn:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/hijacker/CrackFragment;->speedTestBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_6
    iget v0, p0, Lcom/hijacker/CrackFragment;->normalOptHeight:I

    if-eq v0, v1, :cond_7

    iget v0, p0, Lcom/hijacker/CrackFragment;->normalTestBtnWidth:I

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/hijacker/CrackFragment;->optionsContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/hijacker/CrackFragment;->normalOptHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/hijacker/CrackFragment;->optionsContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/hijacker/CrackFragment;->speedTestBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/hijacker/CrackFragment;->normalTestBtnWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/hijacker/CrackFragment;->speedTestBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/hijacker/CrackFragment;->consoleScrollView:Landroid/widget/ScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    :cond_7
    :goto_2
    return-void
.end method

.method public onStop()V
    .locals 1

    sget-object v0, Lcom/hijacker/CrackFragment;->task:Lcom/hijacker/CrackFragment$CrackTask;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/hijacker/CrackFragment$CrackTask;->animator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hijacker/CrackFragment;->task:Lcom/hijacker/CrackFragment$CrackTask;

    iget-object v0, v0, Lcom/hijacker/CrackFragment$CrackTask;->animator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/hijacker/CrackFragment;->capfileView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hijacker/CrackFragment;->capfile_text:Ljava/lang/String;

    iget-object v0, p0, Lcom/hijacker/CrackFragment;->wordlistView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hijacker/CrackFragment;->wordlist_text:Ljava/lang/String;

    iget-object v0, p0, Lcom/hijacker/CrackFragment;->securityRG:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    sput v0, Lcom/hijacker/CrackFragment;->securityChecked:I

    iget-object v0, p0, Lcom/hijacker/CrackFragment;->wepRG:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    sput v0, Lcom/hijacker/CrackFragment;->wepChecked:I

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    return-void
.end method

.method startSpeedTest()V
    .locals 3

    iget-object v0, p0, Lcom/hijacker/CrackFragment;->capfileView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/CrackFragment;->wordlistView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/hijacker/CrackFragment$CrackTask;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2, v1, v1}, Lcom/hijacker/CrackFragment$CrackTask;-><init>(Lcom/hijacker/CrackFragment;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/hijacker/CrackFragment;->task:Lcom/hijacker/CrackFragment$CrackTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/hijacker/CrackFragment$CrackTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
