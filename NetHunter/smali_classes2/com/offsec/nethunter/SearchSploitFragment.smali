.class public Lcom/offsec/nethunter/SearchSploitFragment;
.super Landroidx/fragment/app/Fragment;
.source "SearchSploitFragment.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"

.field public static final TAG:Ljava/lang/String; = "SearchSploitFragment"


# instance fields
.field private activity:Landroid/app/Activity;

.field private adi:Landroidx/appcompat/app/AlertDialog;

.field private context:Landroid/content/Context;

.field private database:Lcom/offsec/nethunter/SearchSploitSQL;

.field private full_exploitList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/SearchSploit;",
            ">;"
        }
    .end annotation
.end field

.field private isLoaded:Ljava/lang/Boolean;

.field private numex:Landroid/widget/TextView;

.field private searchSploitListView:Landroid/widget/ListView;

.field private sel_platform:Ljava/lang/String;

.field private sel_search:Ljava/lang/String;

.field private sel_type:Ljava/lang/String;

.field private withFilters:Ljava/lang/Boolean;


# direct methods
.method public static synthetic $r8$lambda$t1kRWBcwJkEm_hayXepJRkpjkc4(Lcom/offsec/nethunter/SearchSploitFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/offsec/nethunter/SearchSploitFragment;->loadExploits()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsel_platform(Lcom/offsec/nethunter/SearchSploitFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/SearchSploitFragment;->sel_platform:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsel_search(Lcom/offsec/nethunter/SearchSploitFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/SearchSploitFragment;->sel_search:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsel_type(Lcom/offsec/nethunter/SearchSploitFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/SearchSploitFragment;->sel_type:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mloadExploits(Lcom/offsec/nethunter/SearchSploitFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/offsec/nethunter/SearchSploitFragment;->loadExploits()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment;->withFilters:Ljava/lang/Boolean;

    const-string v0, ""

    iput-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment;->sel_search:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment;->isLoaded:Ljava/lang/Boolean;

    return-void
.end method

.method private static hideSoftKeyboard(Landroid/view/View;)V
    .locals 3

    new-instance v0, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda3;-><init>(Landroid/view/View;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic lambda$hideSoftKeyboard$6(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method static synthetic lambda$onOptionsItemSelected$4(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private loadExploits()V
    .locals 6

    iget-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment;->sel_platform:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment;->sel_type:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment;->withFilters:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment;->database:Lcom/offsec/nethunter/SearchSploitSQL;

    iget-object v1, p0, Lcom/offsec/nethunter/SearchSploitFragment;->sel_search:Ljava/lang/String;

    iget-object v2, p0, Lcom/offsec/nethunter/SearchSploitFragment;->sel_type:Ljava/lang/String;

    iget-object v3, p0, Lcom/offsec/nethunter/SearchSploitFragment;->sel_platform:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/offsec/nethunter/SearchSploitSQL;->getAllExploitsFiltered(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment;->sel_search:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment;->full_exploitList:Ljava/util/List;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment;->database:Lcom/offsec/nethunter/SearchSploitSQL;

    iget-object v1, p0, Lcom/offsec/nethunter/SearchSploitFragment;->sel_search:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/SearchSploitSQL;->getAllExploitsRaw(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/SearchSploitFragment;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    iget-object v1, p0, Lcom/offsec/nethunter/SearchSploitFragment;->numex:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "%d results"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/offsec/nethunter/ExploitLoader;

    iget-object v3, p0, Lcom/offsec/nethunter/SearchSploitFragment;->context:Landroid/content/Context;

    invoke-direct {v1, v3, v0}, Lcom/offsec/nethunter/ExploitLoader;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iget-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment;->searchSploitListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment;->isLoaded:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda8;-><init>(Lcom/offsec/nethunter/SearchSploitFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment;->adi:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment;->isLoaded:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/offsec/nethunter/SearchSploitFragment;->requireView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/offsec/nethunter/SearchSploitFragment;->hideSoftKeyboard(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method private main(Landroid/view/View;)V
    .locals 9

    const v0, 0x7f0903cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment;->searchSploitListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment;->database:Lcom/offsec/nethunter/SearchSploitSQL;

    invoke-virtual {v0}, Lcom/offsec/nethunter/SearchSploitSQL;->getCount()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const v1, 0x7f0903eb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/16 v0, 0x8

    const/4 v6, 0x0

    const v7, 0x7f0903d6

    cmp-long v8, v2, v4

    if-nez v8, :cond_0

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/offsec/nethunter/SearchSploitFragment;->adi:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    invoke-virtual {p0}, Lcom/offsec/nethunter/SearchSploitFragment;->requireView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/offsec/nethunter/SearchSploitFragment;->hideSoftKeyboard(Landroid/view/View;)V

    return-void

    :cond_0
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment;->database:Lcom/offsec/nethunter/SearchSploitSQL;

    invoke-virtual {v0}, Lcom/offsec/nethunter/SearchSploitSQL;->getPlatforms()Ljava/util/List;

    move-result-object v0

    const v1, 0x7f090188

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/offsec/nethunter/SearchSploitFragment;->activity:Landroid/app/Activity;

    const v4, 0x1090003

    invoke-direct {v2, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v3, 0x1090009

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance v2, Lcom/offsec/nethunter/SearchSploitFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/offsec/nethunter/SearchSploitFragment$2;-><init>(Lcom/offsec/nethunter/SearchSploitFragment;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment;->database:Lcom/offsec/nethunter/SearchSploitSQL;

    invoke-virtual {v0}, Lcom/offsec/nethunter/SearchSploitSQL;->getTypes()Ljava/util/List;

    move-result-object v0

    const v1, 0x7f090189

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/offsec/nethunter/SearchSploitFragment;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance v1, Lcom/offsec/nethunter/SearchSploitFragment$3;

    invoke-direct {v1, p0, v0}, Lcom/offsec/nethunter/SearchSploitFragment$3;-><init>(Lcom/offsec/nethunter/SearchSploitFragment;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-direct {p0}, Lcom/offsec/nethunter/SearchSploitFragment;->loadExploits()V

    return-void
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/SearchSploitFragment;
    .locals 3

    new-instance v0, Lcom/offsec/nethunter/SearchSploitFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/SearchSploitFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/SearchSploitFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method synthetic lambda$loadExploits$7$com-offsec-nethunter-SearchSploitFragment()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment;->database:Lcom/offsec/nethunter/SearchSploitSQL;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/SearchSploitSQL;->getAllExploitsRaw(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment;->full_exploitList:Ljava/util/List;

    return-void
.end method

.method synthetic lambda$onCreateView$0$com-offsec-nethunter-SearchSploitFragment(Ljava/lang/Boolean;Landroid/view/View;Landroid/widget/ProgressBar;)V
    .locals 11

    const-string v0, "importDB"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/SearchSploitFragment;->context:Landroid/content/Context;

    const-string v1, "DB FEED DONE"

    invoke-static {p1, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage_long(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "databases/SearchSploit"

    const-string v3, "/nh_files/SearchSploit"

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    const-wide/16 v7, 0x0

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v9

    move-object v5, v1

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    const-string p1, "Successfully imported SearchSploit"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/offsec/nethunter/SearchSploitFragment;->main(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/offsec/nethunter/SearchSploitFragment;->context:Landroid/content/Context;

    const-string p2, "Unable to find Searchsploit files.csv database. Install exploitdb in chroot"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage_long(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    const/16 p1, 0x8

    invoke-virtual {p3, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$onCreateView$1$com-offsec-nethunter-SearchSploitFragment(Landroid/widget/Button;Landroid/view/View;Landroid/widget/ProgressBar;)V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment;->database:Lcom/offsec/nethunter/SearchSploitSQL;

    invoke-virtual {v0}, Lcom/offsec/nethunter/SearchSploitSQL;->doDbFeed()Ljava/lang/Boolean;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/SearchSploitFragment;Ljava/lang/Boolean;Landroid/view/View;Landroid/widget/ProgressBar;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$onCreateView$2$com-offsec-nethunter-SearchSploitFragment(Landroid/widget/ProgressBar;Landroid/widget/Button;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance p4, Ljava/lang/Thread;

    new-instance v0, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/SearchSploitFragment;Landroid/widget/Button;Landroid/view/View;Landroid/widget/ProgressBar;)V

    invoke-direct {p4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p4}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method synthetic lambda$onCreateView$3$com-offsec-nethunter-SearchSploitFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/SearchSploitFragment;->main(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$onOptionsItemSelected$5$com-offsec-nethunter-SearchSploitFragment(Landroid/view/MenuItem;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/offsec/nethunter/SearchSploitFragment;->getView()Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0903d6

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    const-string p2, "Disable Raw search"

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/SearchSploitFragment;->withFilters:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/offsec/nethunter/SearchSploitFragment;->loadExploits()V

    invoke-virtual {p0}, Lcom/offsec/nethunter/SearchSploitFragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/offsec/nethunter/SearchSploitFragment;->hideSoftKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/offsec/nethunter/SearchSploitFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/SearchSploitFragment;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/offsec/nethunter/SearchSploitFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nethunter/SearchSploitFragment;->activity:Landroid/app/Activity;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0d000b

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0c00c7

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/offsec/nethunter/SearchSploitFragment;->setHasOptionsMenu(Z)V

    new-instance p2, Lcom/offsec/nethunter/SearchSploitSQL;

    iget-object p3, p0, Lcom/offsec/nethunter/SearchSploitFragment;->context:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/offsec/nethunter/SearchSploitSQL;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/offsec/nethunter/SearchSploitFragment;->database:Lcom/offsec/nethunter/SearchSploitSQL;

    new-instance p2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object p3, p0, Lcom/offsec/nethunter/SearchSploitFragment;->activity:Landroid/app/Activity;

    const v1, 0x7f120117

    invoke-direct {p2, p3, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string p3, "Exploit Database Archive"

    invoke-virtual {p2, p3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const-string p3, "Loading...wait"

    invoke-virtual {p2, p3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p2

    iput-object p2, p0, Lcom/offsec/nethunter/SearchSploitFragment;->adi:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    iget-object p2, p0, Lcom/offsec/nethunter/SearchSploitFragment;->adi:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog;->show()V

    const p2, 0x7f090357

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/offsec/nethunter/SearchSploitFragment;->numex:Landroid/widget/TextView;

    const p2, 0x7f0903d0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SearchView;

    new-instance p3, Lcom/offsec/nethunter/SearchSploitFragment$1;

    invoke-direct {p3, p0}, Lcom/offsec/nethunter/SearchSploitFragment$1;-><init>(Lcom/offsec/nethunter/SearchSploitFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    const p2, 0x7f0903eb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    const p3, 0x7f09038f

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ProgressBar;

    new-instance v0, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/SearchSploitFragment;Landroid/widget/ProgressBar;Landroid/widget/Button;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance p3, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0, p1}, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/SearchSploitFragment;Landroid/view/View;)V

    const-wide/16 v0, 0xfa

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090398

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/offsec/nethunter/SearchSploitFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment;->withFilters:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/offsec/nethunter/SearchSploitFragment;->requireView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0903d6

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment;->withFilters:Ljava/lang/Boolean;

    const-string v0, "Enable Raw search"

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/offsec/nethunter/SearchSploitFragment;->loadExploits()V

    invoke-virtual {p0}, Lcom/offsec/nethunter/SearchSploitFragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/offsec/nethunter/SearchSploitFragment;->hideSoftKeyboard(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v3, p0, Lcom/offsec/nethunter/SearchSploitFragment;->activity:Landroid/app/Activity;

    const v4, 0x7f120117

    invoke-direct {v0, v3, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v3, "Raw search warning"

    invoke-virtual {v0, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const-string v3, "The exploit db is pretty big (+30K exploits), activating raw search will make the search slow.\nIs useful to do global searches when you don\'t find a exploit."

    invoke-virtual {v0, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v3

    new-instance v4, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda1;-><init>()V

    const-string v5, "Cancel"

    invoke-virtual {v3, v5, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v3

    new-instance v4, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, p1}, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/SearchSploitFragment;Landroid/view/MenuItem;)V

    const-string p1, "Enable"

    invoke-virtual {v3, p1, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    :goto_0
    return v1

    :cond_2
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
