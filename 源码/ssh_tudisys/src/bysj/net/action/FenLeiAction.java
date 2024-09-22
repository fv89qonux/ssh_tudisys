package bysj.net.action;

import java.util.*;
import bysj.net.model.FenLei;
import bysj.net.manager.*;
import com.opensymphony.xwork2.*;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import bysj.net.util.PageModel;

@SuppressWarnings({ "unchecked", "serial" })
public class FenLeiAction extends ActionSupport {
	private String errMsg;
	private String field;
	private String fieldValue;
	private ObjectManager objectManager;

	private FenLei util;
	private PageModel<FenLei> pageModel;
	public String saveOrUpdateObject() throws Exception {
		if (null != util && 0 == util.getId()) {
			String sql = "from FenLei where s_0 = '" + util.getS_0() + "'";
			List list = objectManager.getUtil(sql);
			if (null != list && list.size() > 0) {
				errMsg = "该信息已存在";
				return "saveOrUpdate";
			}
		}
		objectManager.saveOrUpdateObject(util);
		util = null;
		errMsg = null;
		return getAllUtil();
	}

	public String deleteManyUtil() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		String ids[] = request.getParameterValues("id");
		FenLei util = null;
		for (String id : ids) {
			util = new FenLei();
			util.setId(Integer.parseInt(id));
			objectManager.deleteObject(util);
		}
		util = null;
		return getAllUtil();
	}	public String deleteUtil() throws Exception{
		objectManager.deleteObject(util);
		util = null;
		return getAllUtil();
	}

	public String selectUtil() throws Exception{
		util = (FenLei) objectManager.getObject(new FenLei(), util.getId());
		errMsg = null;
		return "saveOrUpdate";
	}

	public String getAllUtil() throws Exception{
		if (null == pageModel) {
			pageModel = new PageModel<FenLei>();
		}
		if (0 == pageModel.getCurrentPageNo()) {
			pageModel.setCurrentPageNo(1);
		}
		StringBuilder _sql = new StringBuilder();
		_sql.append(" from FenLei ");
		if (null != field && field.trim().length() > 0) {
			fieldValue = new String(fieldValue.getBytes("iso-8859-1"), "utf-8");
			_sql.append(" where " + field + " like '%" + fieldValue + "%'");
		}
		pageModel = objectManager.getUtil(_sql.toString(), pageModel.getCurrentPageNo());
		errMsg = null;
		return "find";
	}

	public FenLei getUtil() {
		return util;
	}

	public void setUtil(FenLei util) {
		this.util = util;
	}

	public String getErrMsg() {
		return errMsg;
	}

	public void setErrMsg(String errMsg) {
		this.errMsg = errMsg;
	}

	public String getField() {
		return field;
	}

	public void setField(String field) {
		this.field = field;
	}

	public String getFieldValue() {
		return fieldValue;
	}

	public void setFieldValue(String fieldValue) {
		this.fieldValue = fieldValue;
	}

	public ObjectManager getObjectManager() {
		return objectManager;
	}

	public void setObjectManager(ObjectManager objectManager) {
		this.objectManager = objectManager;
	}

	public PageModel<FenLei> getPageModel() {
		return pageModel;
	}

	public void setPageModel(PageModel<FenLei> pageModel) {
		this.pageModel = pageModel;
	}

}
