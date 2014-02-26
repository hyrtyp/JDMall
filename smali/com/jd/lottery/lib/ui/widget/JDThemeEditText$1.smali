.class Lcom/jd/lottery/lib/ui/widget/JDThemeEditText$1;
.super Ljava/lang/Object;
.source "JDThemeEditText.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText$1;->this$0:Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText$1;->this$0:Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;

    #getter for: Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;->mEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;->access$0(Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText$1;->this$0:Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;

    #getter for: Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;->mFrameLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;->access$1(Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;)Landroid/widget/FrameLayout;

    move-result-object v0

    sget v1, Lcom/jd/lottery/lib/R$drawable;->input_box_holo_dark:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 50
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText$1;->this$0:Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;

    #getter for: Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;->mCleanUesrNameImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;->access$2(Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText$1;->this$0:Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;

    #getter for: Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;->mFrameLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;->access$1(Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;)Landroid/widget/FrameLayout;

    move-result-object v0

    sget v1, Lcom/jd/lottery/lib/R$drawable;->input_box_holo_light:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 53
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText$1;->this$0:Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;

    #getter for: Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;->mCleanUesrNameImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;->access$2(Lcom/jd/lottery/lib/ui/widget/JDThemeEditText;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
