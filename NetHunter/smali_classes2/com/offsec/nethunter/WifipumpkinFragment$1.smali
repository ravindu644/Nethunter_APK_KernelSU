.class Lcom/offsec/nethunter/WifipumpkinFragment$1;
.super Ljava/lang/Object;
.source "WifipumpkinFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/WifipumpkinFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/WifipumpkinFragment;

.field final synthetic val$PreviewCheckbox:Landroid/widget/CheckBox;

.field final synthetic val$TemplateString:[Ljava/lang/String;

.field final synthetic val$myBrowser:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/WifipumpkinFragment;Landroid/widget/CheckBox;[Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->this$0:Lcom/offsec/nethunter/WifipumpkinFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->val$PreviewCheckbox:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->val$TemplateString:[Ljava/lang/String;

    iput-object p4, p0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->val$myBrowser:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p2, p0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->this$0:Lcom/offsec/nethunter/WifipumpkinFragment;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/offsec/nethunter/WifipumpkinFragment;->-$$Nest$fputselected_template(Lcom/offsec/nethunter/WifipumpkinFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->this$0:Lcom/offsec/nethunter/WifipumpkinFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/WifipumpkinFragment;->-$$Nest$fgetselected_template(Lcom/offsec/nethunter/WifipumpkinFragment;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "None"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->val$PreviewCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->val$PreviewCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->val$TemplateString:[Ljava/lang/String;

    const-string p3, ""

    aput-object p3, p1, p2

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->val$PreviewCheckbox:Landroid/widget/CheckBox;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->this$0:Lcom/offsec/nethunter/WifipumpkinFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/WifipumpkinFragment;->-$$Nest$fgetselected_template(Lcom/offsec/nethunter/WifipumpkinFragment;)Ljava/lang/String;

    move-result-object p1

    const-string p4, "FlaskDemo"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p4, "/nh_files/templates/"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->this$0:Lcom/offsec/nethunter/WifipumpkinFragment;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->this$0:Lcom/offsec/nethunter/WifipumpkinFragment;

    invoke-static {p4}, Lcom/offsec/nethunter/WifipumpkinFragment;->-$$Nest$fgetselected_template(Lcom/offsec/nethunter/WifipumpkinFragment;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "/templates/En/templates/login.html"

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lcom/offsec/nethunter/WifipumpkinFragment;->-$$Nest$fputtemplate_src(Lcom/offsec/nethunter/WifipumpkinFragment;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->this$0:Lcom/offsec/nethunter/WifipumpkinFragment;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->this$0:Lcom/offsec/nethunter/WifipumpkinFragment;

    invoke-static {p4}, Lcom/offsec/nethunter/WifipumpkinFragment;->-$$Nest$fgetselected_template(Lcom/offsec/nethunter/WifipumpkinFragment;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "/templates/login.html"

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lcom/offsec/nethunter/WifipumpkinFragment;->-$$Nest$fputtemplate_src(Lcom/offsec/nethunter/WifipumpkinFragment;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->val$myBrowser:Landroid/webkit/WebView;

    invoke-virtual {p1, p3}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->val$myBrowser:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    iget-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->val$myBrowser:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    iget-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->val$myBrowser:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    iget-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->val$myBrowser:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->val$myBrowser:Landroid/webkit/WebView;

    new-instance p4, Landroid/webkit/WebViewClient;

    invoke-direct {p4}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {p1, p4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->val$myBrowser:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    iget-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->val$myBrowser:Landroid/webkit/WebView;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "file:///sdcard/nh_files/templates/"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->this$0:Lcom/offsec/nethunter/WifipumpkinFragment;

    invoke-static {p3}, Lcom/offsec/nethunter/WifipumpkinFragment;->-$$Nest$fgetselected_template(Lcom/offsec/nethunter/WifipumpkinFragment;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/static"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->this$0:Lcom/offsec/nethunter/WifipumpkinFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/WifipumpkinFragment;->-$$Nest$fgettemplate_src(Lcom/offsec/nethunter/WifipumpkinFragment;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->val$myBrowser:Landroid/webkit/WebView;

    iget-object p3, p0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->this$0:Lcom/offsec/nethunter/WifipumpkinFragment;

    invoke-static {p3}, Lcom/offsec/nethunter/WifipumpkinFragment;->-$$Nest$fgettemplate_src(Lcom/offsec/nethunter/WifipumpkinFragment;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->val$TemplateString:[Ljava/lang/String;

    iget-object p3, p0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->this$0:Lcom/offsec/nethunter/WifipumpkinFragment;

    invoke-static {p3}, Lcom/offsec/nethunter/WifipumpkinFragment;->-$$Nest$fgetselected_template(Lcom/offsec/nethunter/WifipumpkinFragment;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, p2

    :goto_1
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
