.class Lcom/offsec/nethunter/ModulesFragment$ModuleListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ModulesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/ModulesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ModuleListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/ModulesFragment$ModuleListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final moduleStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final modules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0c0078

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p1, p0, Lcom/offsec/nethunter/ModulesFragment$ModuleListAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/offsec/nethunter/ModulesFragment$ModuleListAdapter;->modules:Ljava/util/List;

    iput-object p3, p0, Lcom/offsec/nethunter/ModulesFragment$ModuleListAdapter;->moduleStates:Ljava/util/Map;

    return-void
.end method

.method static synthetic lambda$getView$0(Landroid/content/SharedPreferences;Ljava/lang/String;Landroid/widget/CompoundButton;Z)V
    .locals 1

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "autoload_"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/offsec/nethunter/ModulesFragment$ModuleListAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0078

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/offsec/nethunter/ModulesFragment$ModuleListAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {p3, v1}, Lcom/offsec/nethunter/ModulesFragment$ModuleListAdapter$ViewHolder;-><init>(Lcom/offsec/nethunter/ModulesFragment$ModuleListAdapter$ViewHolder-IA;)V

    const v1, 0x7f090300

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/offsec/nethunter/ModulesFragment$ModuleListAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    const v1, 0x7f090301

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/offsec/nethunter/ModulesFragment$ModuleListAdapter$ViewHolder;->statusIcon:Landroid/widget/ImageView;

    const v1, 0x7f0902fe

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p3, Lcom/offsec/nethunter/ModulesFragment$ModuleListAdapter$ViewHolder;->autoLoadCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/offsec/nethunter/ModulesFragment$ModuleListAdapter$ViewHolder;

    :goto_0
    iget-object v1, p0, Lcom/offsec/nethunter/ModulesFragment$ModuleListAdapter;->modules:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v1, p3, Lcom/offsec/nethunter/ModulesFragment$ModuleListAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/offsec/nethunter/ModulesFragment$ModuleListAdapter;->moduleStates:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p3, Lcom/offsec/nethunter/ModulesFragment$ModuleListAdapter$ViewHolder;->statusIcon:Landroid/widget/ImageView;

    const v2, 0x7f080098

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_1
    iget-object v1, p3, Lcom/offsec/nethunter/ModulesFragment$ModuleListAdapter$ViewHolder;->statusIcon:Landroid/widget/ImageView;

    const v2, 0x7f080099

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    iget-object v1, p0, Lcom/offsec/nethunter/ModulesFragment$ModuleListAdapter;->context:Landroid/content/Context;

    const-string v2, "com.offsec.nethunter"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p3, Lcom/offsec/nethunter/ModulesFragment$ModuleListAdapter$ViewHolder;->autoLoadCheckBox:Landroid/widget/CheckBox;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "autoload_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p3, p3, Lcom/offsec/nethunter/ModulesFragment$ModuleListAdapter$ViewHolder;->autoLoadCheckBox:Landroid/widget/CheckBox;

    new-instance v0, Lcom/offsec/nethunter/ModulesFragment$ModuleListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1, p1}, Lcom/offsec/nethunter/ModulesFragment$ModuleListAdapter$$ExternalSyntheticLambda0;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object p2
.end method
