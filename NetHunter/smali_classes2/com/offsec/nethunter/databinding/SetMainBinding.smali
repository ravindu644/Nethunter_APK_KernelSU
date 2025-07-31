.class public abstract Lcom/offsec/nethunter/databinding/SetMainBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SetMainBinding.java"


# instance fields
.field public final divider:Landroid/view/View;

.field public final divider4:Landroid/view/View;

.field public final mybrowser:Landroid/webkit/WebView;

.field public final refreshPreview:Landroid/widget/Button;

.field public final resetTemplate:Landroid/widget/Button;

.field public final saveTemplate:Landroid/widget/Button;

.field public final setLink:Landroid/widget/EditText;

.field public final setName:Landroid/widget/EditText;

.field public final setPic:Landroid/widget/EditText;

.field public final setSubject:Landroid/widget/EditText;

.field public final setTemplate:Landroid/widget/Spinner;

.field public final startSet:Landroid/widget/Button;

.field public final textView12:Landroid/widget/TextView;

.field public final textView18:Landroid/widget/TextView;

.field public final textView6:Landroid/widget/TextView;

.field public final textView7:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/view/View;Landroid/view/View;Landroid/webkit/WebView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    iput-object v1, v0, Lcom/offsec/nethunter/databinding/SetMainBinding;->divider:Landroid/view/View;

    move-object v1, p5

    iput-object v1, v0, Lcom/offsec/nethunter/databinding/SetMainBinding;->divider4:Landroid/view/View;

    move-object v1, p6

    iput-object v1, v0, Lcom/offsec/nethunter/databinding/SetMainBinding;->mybrowser:Landroid/webkit/WebView;

    move-object v1, p7

    iput-object v1, v0, Lcom/offsec/nethunter/databinding/SetMainBinding;->refreshPreview:Landroid/widget/Button;

    move-object v1, p8

    iput-object v1, v0, Lcom/offsec/nethunter/databinding/SetMainBinding;->resetTemplate:Landroid/widget/Button;

    move-object v1, p9

    iput-object v1, v0, Lcom/offsec/nethunter/databinding/SetMainBinding;->saveTemplate:Landroid/widget/Button;

    move-object v1, p10

    iput-object v1, v0, Lcom/offsec/nethunter/databinding/SetMainBinding;->setLink:Landroid/widget/EditText;

    move-object v1, p11

    iput-object v1, v0, Lcom/offsec/nethunter/databinding/SetMainBinding;->setName:Landroid/widget/EditText;

    move-object v1, p12

    iput-object v1, v0, Lcom/offsec/nethunter/databinding/SetMainBinding;->setPic:Landroid/widget/EditText;

    move-object v1, p13

    iput-object v1, v0, Lcom/offsec/nethunter/databinding/SetMainBinding;->setSubject:Landroid/widget/EditText;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/offsec/nethunter/databinding/SetMainBinding;->setTemplate:Landroid/widget/Spinner;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/offsec/nethunter/databinding/SetMainBinding;->startSet:Landroid/widget/Button;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/offsec/nethunter/databinding/SetMainBinding;->textView12:Landroid/widget/TextView;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/offsec/nethunter/databinding/SetMainBinding;->textView18:Landroid/widget/TextView;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/offsec/nethunter/databinding/SetMainBinding;->textView6:Landroid/widget/TextView;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/offsec/nethunter/databinding/SetMainBinding;->textView7:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/offsec/nethunter/databinding/SetMainBinding;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/offsec/nethunter/databinding/SetMainBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/offsec/nethunter/databinding/SetMainBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/offsec/nethunter/databinding/SetMainBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c00cd

    invoke-static {p1, p0, v0}, Lcom/offsec/nethunter/databinding/SetMainBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/offsec/nethunter/databinding/SetMainBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/offsec/nethunter/databinding/SetMainBinding;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/offsec/nethunter/databinding/SetMainBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/offsec/nethunter/databinding/SetMainBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/offsec/nethunter/databinding/SetMainBinding;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/offsec/nethunter/databinding/SetMainBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/offsec/nethunter/databinding/SetMainBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/offsec/nethunter/databinding/SetMainBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0c00cd

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/offsec/nethunter/databinding/SetMainBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/offsec/nethunter/databinding/SetMainBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x7f0c00cd

    invoke-static {p0, v2, v0, v1, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/offsec/nethunter/databinding/SetMainBinding;

    return-object p0
.end method
