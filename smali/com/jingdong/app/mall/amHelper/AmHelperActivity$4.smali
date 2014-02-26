.class Lcom/jingdong/app/mall/amHelper/AmHelperActivity$4;
.super Ljava/lang/Object;
.source "AmHelperActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->getRadioButton(ILjava/lang/String;I)Landroid/widget/RadioButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

.field private final synthetic val$res:I


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$4;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    iput p2, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$4;->val$res:I

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 192
    move-object v0, p1

    check-cast v0, Lcom/jingdong/app/mall/amHelper/RadioButtonCenter;

    .line 196
    .local v0, buttonCenter:Lcom/jingdong/app/mall/amHelper/RadioButtonCenter;
    if-eqz p2, :cond_1

    .line 197
    iget v1, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$4;->val$res:I

    if-lez v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$4;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02009e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/amHelper/RadioButtonCenter;->setButton(Landroid/graphics/drawable/Drawable;)V

    .line 202
    :goto_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 222
    :goto_1
    return-void

    .line 200
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/amHelper/RadioButtonCenter;->setTextColor(I)V

    goto :goto_0

    .line 204
    :pswitch_0
    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$4;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    const-string v2, "home"

    #calls: Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->createComponent(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->access$6(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 208
    :pswitch_1
    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$4;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    const-string v2, "meeting"

    #calls: Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->createComponent(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->access$6(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 212
    :pswitch_2
    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$4;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    const-string v2, "dinner"

    #calls: Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->createComponent(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->access$6(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 216
    :cond_1
    iget v1, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$4;->val$res:I

    if-lez v1, :cond_2

    .line 217
    iget-object v1, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$4;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/amHelper/RadioButtonCenter;->setButton(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 219
    :cond_2
    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/amHelper/RadioButtonCenter;->setTextColor(I)V

    goto :goto_1

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0xffee00
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
