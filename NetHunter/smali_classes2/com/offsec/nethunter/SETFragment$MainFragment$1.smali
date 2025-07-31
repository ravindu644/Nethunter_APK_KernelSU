.class Lcom/offsec/nethunter/SETFragment$MainFragment$1;
.super Ljava/lang/Object;
.source "SETFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/SETFragment$MainFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/SETFragment$MainFragment;

.field final synthetic val$PhishName:Landroid/widget/EditText;

.field final synthetic val$PhishSubject:Landroid/widget/EditText;

.field final synthetic val$myBrowser:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/SETFragment$MainFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$1;->this$0:Lcom/offsec/nethunter/SETFragment$MainFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$1;->val$PhishSubject:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$1;->val$PhishName:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$1;->val$myBrowser:Landroid/webkit/WebView;

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

    iget-object p2, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$1;->this$0:Lcom/offsec/nethunter/SETFragment$MainFragment;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/offsec/nethunter/SETFragment$MainFragment;->-$$Nest$fputselected_template(Lcom/offsec/nethunter/SETFragment$MainFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$1;->this$0:Lcom/offsec/nethunter/SETFragment$MainFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/SETFragment$MainFragment;->-$$Nest$fgetselected_template(Lcom/offsec/nethunter/SETFragment$MainFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x1

    const/4 p5, -0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "Twitter"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p5, 0x2

    goto :goto_0

    :sswitch_1
    const-string p2, "Messenger"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p5, 0x1

    goto :goto_0

    :sswitch_2
    const-string p2, "Facebook"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p5, 0x0

    :goto_0
    packed-switch p5, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$1;->this$0:Lcom/offsec/nethunter/SETFragment$MainFragment;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p5, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "/configs/set-twitter.html"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/offsec/nethunter/SETFragment$MainFragment;->-$$Nest$fputtemplate_src(Lcom/offsec/nethunter/SETFragment$MainFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$1;->this$0:Lcom/offsec/nethunter/SETFragment$MainFragment;

    const-string p2, "set-twitter.html"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/SETFragment$MainFragment;->-$$Nest$fputtemplate_tempfile(Lcom/offsec/nethunter/SETFragment$MainFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$1;->val$PhishSubject:Landroid/widget/EditText;

    new-array p2, p4, [Ljava/lang/Object;

    iget-object p5, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$1;->val$PhishName:Landroid/widget/EditText;

    invoke-virtual {p5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p5

    aput-object p5, p2, p3

    const-string p3, "{0} sent you a Direct Message on Twitter!"

    invoke-static {p3, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$1;->this$0:Lcom/offsec/nethunter/SETFragment$MainFragment;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p5, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "/configs/set-messenger.html"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/offsec/nethunter/SETFragment$MainFragment;->-$$Nest$fputtemplate_src(Lcom/offsec/nethunter/SETFragment$MainFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$1;->this$0:Lcom/offsec/nethunter/SETFragment$MainFragment;

    const-string p2, "set-messenger.html"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/SETFragment$MainFragment;->-$$Nest$fputtemplate_tempfile(Lcom/offsec/nethunter/SETFragment$MainFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$1;->val$PhishSubject:Landroid/widget/EditText;

    new-array p2, p4, [Ljava/lang/Object;

    iget-object p5, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$1;->val$PhishName:Landroid/widget/EditText;

    invoke-virtual {p5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p5

    aput-object p5, p2, p3

    const-string p3, "{0} sent you a message on Messenger."

    invoke-static {p3, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$1;->this$0:Lcom/offsec/nethunter/SETFragment$MainFragment;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p5, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "/configs/set-facebook.html"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/offsec/nethunter/SETFragment$MainFragment;->-$$Nest$fputtemplate_src(Lcom/offsec/nethunter/SETFragment$MainFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$1;->this$0:Lcom/offsec/nethunter/SETFragment$MainFragment;

    const-string p2, "set-facebook.html"

    invoke-static {p1, p2}, Lcom/offsec/nethunter/SETFragment$MainFragment;->-$$Nest$fputtemplate_tempfile(Lcom/offsec/nethunter/SETFragment$MainFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$1;->val$PhishSubject:Landroid/widget/EditText;

    new-array p2, p4, [Ljava/lang/Object;

    iget-object p5, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$1;->val$PhishName:Landroid/widget/EditText;

    invoke-virtual {p5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p5

    aput-object p5, p2, p3

    const-string p3, "{0} sent you a message on Facebook."

    invoke-static {p3, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p1, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$1;->val$myBrowser:Landroid/webkit/WebView;

    invoke-virtual {p1, p4}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object p1, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$1;->val$myBrowser:Landroid/webkit/WebView;

    iget-object p2, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$1;->this$0:Lcom/offsec/nethunter/SETFragment$MainFragment;

    invoke-static {p2}, Lcom/offsec/nethunter/SETFragment$MainFragment;->-$$Nest$fgettemplate_src(Lcom/offsec/nethunter/SETFragment$MainFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x217bfee6 -> :sswitch_2
        0x21d8daf3 -> :sswitch_1
        0x2c9a4253 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
